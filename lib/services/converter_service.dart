import 'dart:convert';
import 'dart:typed_data';

import 'package:excel/excel.dart' as excel_pkg;
import 'package:flutter/material.dart';

import '../models/contact.dart';
import 'shared/phone_utils.dart';

class ConverterService {
  ConverterService._();

  static const String vcfVersion3 = '3.0';
  static const String vcfVersion4 = '4.0';

  // Ad sütunu üçün açar sözlər
  static const List<String> _nameKeywords = [
    'name',
    'user',
    'customer',
    'ad',
    'adı',
    'adi',
    'adı soyadı',
    'adi soyadi',
    'adı soyadı ata adı',
    'adi soyadi ata adi',
    'soyad',
    'full name',
    'fullname',
  ];

  // Telefon sütunu üçün açar sözlər
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

  static List<Contact> readContactsFromExcel(Uint8List bytes) {
    final excel = excel_pkg.Excel.decodeBytes(bytes);

    if (excel.tables.isEmpty) return [];

    final sheet = excel.tables[excel.tables.keys.first];
    if (sheet == null) return [];

    // 1. Başlıq sətrini və sütun indekslərini tap
    final header = _findHeader(sheet);
    if (header == null) return [];

    final int headerRow = header.rowIndex;
    final int nameCol = header.nameCol;
    final int phoneCol = header.phoneCol;

    debugPrint('=== EXCEL HEADER FOUND ===');
    debugPrint('Header row: $headerRow');
    debugPrint('Name column: $nameCol');
    debugPrint('Phone column: $phoneCol');

    // 2. Data sətirlərini oxu
    final contacts = <Contact>[];

    for (int i = headerRow + 1; i < sheet.maxRows; i++) {
      final row = sheet.row(i);

      if (row.isEmpty) continue;

      final name = _getCell(row, nameCol);
      final rawPhone = _getCell(row, phoneCol);

      if (rawPhone.isEmpty) continue;
      if (rawPhone.toLowerCase() == 'null') continue;

      final phone = PhoneUtils.clean(rawPhone);
      if (!PhoneUtils.isValid(phone)) continue;

      // Ad boşdursa "No Name" yaz
      final fullName = name.isEmpty || name.toLowerCase() == 'null'
          ? 'No Name'
          : name;

      contacts.add(Contact(fullName: fullName, phone: phone));
    }

    debugPrint('=== TOTAL CONTACTS: ${contacts.length} ===');

    return contacts;
  }

  /// Başlıq sətrini tapır və ad/telefon sütunlarının indekslərini qaytarır
  static _HeaderInfo? _findHeader(excel_pkg.Sheet sheet) {
    for (int i = 0; i < sheet.maxRows; i++) {
      final row = sheet.row(i);
      if (row.isEmpty) continue;

      int? nameCol;
      int? phoneCol;

      for (int j = 0; j < row.length; j++) {
        final cell = row[j]?.value?.toString().trim().toLowerCase() ?? '';
        if (cell.isEmpty) continue;

        // Ad sütunu?
        if (nameCol == null && _matchesAny(cell, _nameKeywords)) {
          nameCol = j;
        }

        // Telefon sütunu?
        if (phoneCol == null && _matchesAny(cell, _phoneKeywords)) {
          phoneCol = j;
        }
      }

      // Hər ikisi tapıldısa, bu başlıq sətrinidir
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

  /// Verilmiş mətn açar sözlərdən hər hansı biri ilə uyğun gəlirmi
  static bool _matchesAny(String cellText, List<String> keywords) {
    for (final keyword in keywords) {
      if (cellText == keyword) return true;
      if (cellText.contains(keyword)) return true;
    }
    return false;
  }

  /// Sətirdən təhlükəsiz şəkildə hüceyrə dəyəri oxuyur
  static String _getCell(List<excel_pkg.Data?> row, int index) {
    if (index < 0 || index >= row.length) return '';
    return row[index]?.value?.toString().trim() ?? '';
  }

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

  static Uint8List contactsToVcfBytes(
      List<Contact> contacts, {
        String version = vcfVersion3,
      }) {
    final buffer = StringBuffer();

    for (final contact in contacts) {
      if (!contact.isValid) continue;

      buffer.write('BEGIN:VCARD\r\n');
      buffer.write('VERSION:$version\r\n');

      if (version == vcfVersion4) {
        buffer.write('N:;${contact.fullName};;;\r\n');
        buffer.write('FN;CHARSET=UTF-8:${contact.fullName}\r\n');
        buffer.write('TEL;TYPE=cell;VALUE=uri:tel:${contact.phone}\r\n');
      } else {
        buffer.write('N:;${contact.fullName};;;\r\n');
        buffer.write('FN;CHARSET=UTF-8:${contact.fullName}\r\n');
        buffer.write('TEL;TYPE=CELL:${contact.phone}\r\n');
      }

      buffer.write('END:VCARD\r\n');
    }

    final bom = [0xEF, 0xBB, 0xBF];
    final content = utf8.encode(buffer.toString());
    return Uint8List.fromList([...bom, ...content]);
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

/// Başlıq məlumatı
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