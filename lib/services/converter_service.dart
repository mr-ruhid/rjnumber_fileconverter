import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:excel/excel.dart' as excel_pkg;
import 'package:flutter/material.dart';

import '../models/contact.dart';
import 'shared/phone_utils.dart';

class ConverterService {
  ConverterService._();

  static const String vcfVersion3 = '3.0';
  static const String vcfVersion4 = '4.0';

  static const List<String> _nameKeywords = [
    'name',
    'user',
    'customer',
    'adı soyadı ata adı',
    'adi soyadi ata adi',
    'adı soyadı',
    'adi soyadi',
    'soyad',
    'full name',
    'fullname',
    'ad',
  ];

  static const List<String> _phoneKeywords = [
    'tel',
    'phone',
    'mobile',
    'mobile phone',
    'mobil',
    'mobil telefonu',
    'mobil telefon',
    'telefon',
    'telefonu',
    'number',
    'nömrə',
    'nomre',
    'phone number',
    'telephone',
  ];

  // ---------------------------------------------------------------------
  // EXCEL -> CONTACTS
  // ---------------------------------------------------------------------

  static List<Contact> readContactsFromExcel(Uint8List bytes) {
    final cleanedBytes = _sanitizeExcelBytes(bytes);

    late final excel_pkg.Excel excel;
    try {
      excel = excel_pkg.Excel.decodeBytes(cleanedBytes);
    } catch (e, st) {
      debugPrint('=== EXCEL DECODE FAILED ===');
      debugPrint('$e');
      debugPrint('$st');
      throw Exception('EXCEL_DECODE_ERROR: $e');
    }

    if (excel.tables.isEmpty) {
      throw Exception('EXCEL_NO_SHEETS: Faylda heç bir vərəq tapılmadı');
    }

    // Yalnız ilk sheet-i yox, header tapılana qədər BÜTÜN sheet-ləri yoxla
    for (final entry in excel.tables.entries) {
      final sheet = entry.value;
      debugPrint(
          'Checking sheet "${entry.key}", maxRows=${sheet.maxRows}, maxCols=${sheet.maxColumns}');

      final header = _findHeader(sheet);
      if (header == null) continue;

      final int headerRow = header.rowIndex;
      final int nameCol = header.nameCol;
      final int phoneCol = header.phoneCol;

      debugPrint('=== HEADER FOUND in "${entry.key}" ===');
      debugPrint('row=$headerRow name=$nameCol phone=$phoneCol');

      final contacts = <Contact>[];

      for (int i = headerRow + 1; i < sheet.maxRows; i++) {
        final row = sheet.row(i);
        if (row.isEmpty) continue;

        final name = _getCell(row, nameCol);
        final rawPhone = _getCell(row, phoneCol);

        if (rawPhone.isEmpty) continue;
        if (rawPhone.toLowerCase() == 'null') continue;

        final phone = PhoneUtils.clean(rawPhone);
        if (!PhoneUtils.isValid(phone)) {
          debugPrint('Row $i skipped: invalid phone "$rawPhone" -> "$phone"');
          continue;
        }

        final fullName = name.isEmpty || name.toLowerCase() == 'null'
            ? 'No Name'
            : name;

        contacts.add(Contact(fullName: fullName, phone: phone));
      }

      if (contacts.isNotEmpty) {
        debugPrint('=== TOTAL CONTACTS: ${contacts.length} ===');
        return contacts;
      }
    }

    throw Exception(
        'EXCEL_HEADER_NOT_FOUND: "${excel.tables.keys.join(", ")}" vərəqlərində Ad/Telefon başlığı tapılmadı və ya heç bir sətirdə etibarlı telefon nömrəsi yoxdur');
  }

  static _HeaderInfo? _findHeader(excel_pkg.Sheet sheet) {
    for (int i = 0; i < sheet.maxRows; i++) {
      final row = sheet.row(i);
      if (row.isEmpty) continue;

      int? nameCol;
      int? phoneCol;

      for (int j = 0; j < row.length; j++) {
        final cell = _getCell(row, j).toLowerCase();
        if (cell.isEmpty) continue;

        if (nameCol == null && _matchesAny(cell, _nameKeywords)) {
          nameCol = j;
        }

        if (phoneCol == null && _matchesAny(cell, _phoneKeywords)) {
          phoneCol = j;
        }
      }

      if (nameCol != null && phoneCol != null) {
        return _HeaderInfo(
          rowIndex: i,
          nameCol: nameCol,
          phoneCol: phoneCol,
        );
      }
    }

    return null;
  }

  static bool _matchesAny(String cellText, List<String> keywords) {
    for (final keyword in keywords) {
      if (cellText == keyword) return true;
      if (keyword == 'ad') continue;
      if (cellText.contains(keyword)) return true;
    }
    return false;
  }

  /// Hüceyrə mətnini təhlükəsiz şəkildə çıxarır.
  /// excel: ^4.x-də cell.value artıq String deyil, CellValue-dur (sealed class).
  /// .toString() ETİBARSIZDIR — hər tipi əl ilə "unwrap" etmək lazımdır.
  static String _getCell(List<excel_pkg.Data?> row, int index) {
    if (index < 0 || index >= row.length) return '';
    final cellValue = row[index]?.value;
    return _cellValueToString(cellValue).trim();
  }

  static String _cellValueToString(excel_pkg.CellValue? value) {
    if (value == null) return '';
    switch (value) {
      case excel_pkg.TextCellValue():
        return value.value.toString();
      case excel_pkg.IntCellValue():
        return value.value.toString();
      case excel_pkg.DoubleCellValue():
        final d = value.value;
        if (d == d.truncateToDouble()) {
          return d.toInt().toString();
        }
        return d.toString();
      case excel_pkg.BoolCellValue():
        return value.value.toString();
      case excel_pkg.DateCellValue():
        return '${value.year}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';
      case excel_pkg.DateTimeCellValue():
        return value.asDateTimeLocal().toIso8601String();
      case excel_pkg.TimeCellValue():
        return value.toString();
      case excel_pkg.FormulaCellValue():
        return value.formula;
      default:
        return value.toString();
    }
  }

  /// Real Excel-in yazdığı, amma Dart `excel` paketinin qəbul etmədiyi
  /// hissələri fayldan silib/düzəldib "təmizlənmiş" bytes qaytarır:
  ///
  /// 1) xl/metadata.xml (dynamic array / rich data metadata) — paket
  ///    bunu dəstəkləmir, sheetMetadata əlaqəsi ilə birlikdə silinir.
  ///
  /// 2) xl/styles.xml-də numFmtId 164-dən kiçik olan <numFmt> girişləri
  ///    (məs. Excel-in Çin lokalında yaratdığı daxili tarix/vaxt formatı
  ///    numFmtId="56") — paket bunları "custom format 164-dən aşağı ola
  ///    bilməz" deyib rədd edir və Excel.decodeBytes tamamilə uğursuz olur:
  ///    "Exception: custom numFmtId starts at 164 but found a value of 56"
  static Uint8List _sanitizeExcelBytes(Uint8List bytes) {
    try {
      final archive = ZipDecoder().decodeBytes(bytes);
      final newArchive = Archive();
      bool changed = false;

      for (final file in archive.files) {
        if (!file.isFile) continue;

        // 1) metadata.xml-i tamamilə atla
        if (file.name == 'xl/metadata.xml') {
          changed = true;
          continue;
        }

        final content = file.content as List<int>;

        // 2) workbook.xml.rels-dən sheetMetadata əlaqəsini sil
        if (file.name == 'xl/_rels/workbook.xml.rels') {
          final xml = utf8.decode(content);
          final cleaned = xml.replaceAll(
            RegExp(r'<Relationship[^>]*Type="[^"]*sheetMetadata[^"]*"[^>]*/>'),
            '',
          );
          if (cleaned != xml) changed = true;
          final bytesOut = utf8.encode(cleaned);
          newArchive.addFile(ArchiveFile(file.name, bytesOut.length, bytesOut));
          continue;
        }

        // 3) [Content_Types].xml-dən metadata.xml override-ini sil
        if (file.name == '[Content_Types].xml') {
          final xml = utf8.decode(content);
          final cleaned = xml.replaceAll(
            RegExp(r'<Override[^>]*PartName="/xl/metadata\.xml"[^>]*/>'),
            '',
          );
          if (cleaned != xml) changed = true;
          final bytesOut = utf8.encode(cleaned);
          newArchive.addFile(ArchiveFile(file.name, bytesOut.length, bytesOut));
          continue;
        }

        // 4) styles.xml-dən 164-dən kiçik numFmtId olan girişləri sil
        if (file.name == 'xl/styles.xml') {
          final xml = utf8.decode(content);

          var cleaned = xml.replaceAllMapped(
            RegExp(r'<numFmt\s+numFmtId="(\d+)"[^>]*/>'),
                (match) {
              final id = int.tryParse(match.group(1) ?? '') ?? 0;
              return id < 164 ? '' : match.group(0)!;
            },
          );

          // Boş qalan <numFmts> konteynerini də sil (uyğunsuz count qalmasın)
          cleaned = cleaned.replaceAll(
            RegExp(r'<numFmts\s+count="\d+"\s*>\s*</numFmts>'),
            '',
          );
          cleaned = cleaned.replaceAll(
            RegExp(r'<numFmts\s+count="\d+"\s*/>'),
            '',
          );

          if (cleaned != xml) changed = true;
          final bytesOut = utf8.encode(cleaned);
          newArchive.addFile(ArchiveFile(file.name, bytesOut.length, bytesOut));
          continue;
        }

        newArchive.addFile(ArchiveFile(file.name, content.length, content));
      }

      if (!changed) return bytes;

      final encoded = ZipEncoder().encode(newArchive);
      if (encoded == null) return bytes;
      return Uint8List.fromList(encoded);
    } catch (e) {
      debugPrint('sanitize failed, orijinal bytes istifadə olunur: $e');
      return bytes;
    }
  }

  // ---------------------------------------------------------------------
  // VCF -> CONTACTS
  // ---------------------------------------------------------------------

  static List<Contact> readContactsFromVcf(String content) {
    if (content.startsWith('\uFEFF')) {
      content = content.substring(1);
    }

    final contacts = <Contact>[];
    final lines = content.split(RegExp(r'\r?\n'));

    String? currentName;
    String? currentPhone;

    for (final line in lines) {
      final trimmed = line.trim();

      if (trimmed.startsWith('FN;CHARSET=UTF-8:')) {
        currentName = trimmed.substring(17).trim();
      } else if (trimmed.startsWith('FN;CHARSET=utf-8:')) {
        currentName = trimmed.substring(17).trim();
      } else if (trimmed.startsWith('FN:')) {
        currentName = trimmed.substring(3).trim();
      } else if (trimmed.startsWith('TEL;TYPE=cell;VALUE=uri:tel:')) {
        currentPhone = trimmed.substring(28).trim();
      } else if (trimmed.startsWith('TEL;TYPE=CELL:')) {
        currentPhone = trimmed.substring(13).trim();
      } else if (trimmed.startsWith('TEL;TYPE=cell:')) {
        currentPhone = trimmed.substring(13).trim();
      } else if (trimmed == 'END:VCARD') {
        if (currentName != null && currentName.isNotEmpty) {
          final phone = currentPhone != null
              ? PhoneUtils.clean(currentPhone)
              : '';

          contacts.add(Contact(fullName: currentName, phone: phone));
        }
        currentName = null;
        currentPhone = null;
      }
    }

    return contacts;
  }

  // ---------------------------------------------------------------------
  // CONTACTS -> VCF / EXCEL
  // ---------------------------------------------------------------------

  static Uint8List contactsToVcfBytes(
      List<Contact> contacts, {
        String version = vcfVersion3,
      }) {
    final buffer = StringBuffer();

    for (final contact in contacts) {
      if (!contact.isValid) continue;

      final name = contact.fullName.trim();

      buffer.write('BEGIN:VCARD\r\n');
      buffer.write('VERSION:$version\r\n');
      buffer.write('N:$name;$name;;;\r\n');
      buffer.write('FN:$name\r\n');

      if (version == vcfVersion4) {
        buffer.write('TEL;TYPE=cell;VALUE=uri:tel:${contact.phone}\r\n');
      } else {
        buffer.write('TEL;TYPE=CELL:${contact.phone}\r\n');
      }

      buffer.write('END:VCARD\r\n');
    }

    final content = utf8.encode(buffer.toString());
    return Uint8List.fromList(content);
  }

  static Uint8List contactsToExcelBytes(List<Contact> contacts) {
    final excel = excel_pkg.Excel.createExcel();
    final sheet = excel['Contacts'];

    sheet.appendRow([
      excel_pkg.TextCellValue('user'),
      excel_pkg.TextCellValue('phone'),
    ]);

    for (final contact in contacts) {
      sheet.appendRow([
        excel_pkg.TextCellValue(contact.fullName),
        excel_pkg.TextCellValue(contact.phone),
      ]);
    }

    final bytes = excel.encode();
    if (bytes == null) {
      throw Exception('Excel encoding failed');
    }

    return Uint8List.fromList(bytes);
  }
}

class _HeaderInfo {
  final int rowIndex;
  final int nameCol;
  final int phoneCol;

  _HeaderInfo({
    required this.rowIndex,
    required this.nameCol,
    required this.phoneCol,
  });
}