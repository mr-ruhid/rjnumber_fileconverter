
import 'dart:typed_data';

import 'package:excel/excel.dart' as excel_pkg;

import '../../models/contact.dart';
import '../../services/shared/phone_utils.dart';

class VcfToExcelService {
  VcfToExcelService._();

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