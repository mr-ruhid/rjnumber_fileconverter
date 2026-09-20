import 'dart:convert';
import 'dart:typed_data';

import 'package:excel/excel.dart' as excel_pkg;

import '../models/contact.dart';
import 'shared/phone_utils.dart';

class ConverterService {
  ConverterService._();

  static List<Contact> readContactsFromExcel(Uint8List bytes) {
    final excel = excel_pkg.Excel.decodeBytes(bytes);

    if (excel.tables.isEmpty) {
      return [];
    }

    final sheet = excel.tables[excel.tables.keys.first];
    if (sheet == null) {
      return [];
    }

    final contacts = <Contact>[];

    for (int i = 4; i < sheet.maxRows; i++) {
      final row = sheet.row(i);

      if (row.length <= 5) continue;

      final name = row[2]?.value?.toString().trim() ?? '';
      final rawPhone = row[5]?.value?.toString().trim() ?? '';

      if (name.isEmpty || rawPhone.isEmpty) continue;
      if (name.toLowerCase() == 'null') continue;
      if (rawPhone.toLowerCase() == 'null') continue;

      final phone = PhoneUtils.clean(rawPhone);
      if (!PhoneUtils.isValid(phone)) continue;

      contacts.add(Contact(fullName: name, phone: phone));
    }

    return contacts;
  }

  static Uint8List contactsToVcfBytes(List<Contact> contacts) {
    final buffer = StringBuffer();

    for (final contact in contacts) {
      if (!contact.isValid) continue;

      buffer.writeln('BEGIN:VCARD');
      buffer.writeln('VERSION:3.0');
      buffer.writeln('FN:${contact.fullName}');
      buffer.writeln('TEL;TYPE=CELL:${contact.phone}');
      buffer.writeln('END:VCARD');
    }

    return Uint8List.fromList(utf8.encode(buffer.toString()));
  }

  static List<Contact> readContactsFromVcf(String content) {
    final contacts = <Contact>[];

    final lines = content.split(RegExp(r'\r?\n'));

    String? currentName;
    String? currentPhone;

    for (final line in lines) {
      final trimmed = line.trim();

      if (trimmed.startsWith('FN:')) {
        currentName = trimmed.substring(3).trim();
      } else if (trimmed.startsWith('TEL;TYPE=CELL:')) {
        currentPhone = trimmed.substring(13).trim();
      } else if (trimmed == 'END:VCARD') {
        if (currentName != null && currentName.isNotEmpty) {
          final phone = currentPhone != null
              ? PhoneUtils.clean(currentPhone)
              : '';

          contacts.add(Contact(
            fullName: currentName,
            phone: phone,
          ));
        }

        currentName = null;
        currentPhone = null;
      }
    }

    return contacts;
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