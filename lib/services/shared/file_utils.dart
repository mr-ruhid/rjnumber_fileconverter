import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';

class FileUtils {
  FileUtils._();

  static Future<PlatformFile?> pickVcfFile() async {
    return await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: ['vcf'],
    );
  }

  static Future<PlatformFile?> pickExcelFile() async {
    return await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );
  }

  static Future<Uri?> saveExcelFile(
      Uint8List bytes,
      String fileName,
      String dialogTitle,
      ) async {
    return await FilePicker.saveFile(
      dialogTitle: dialogTitle,
      fileName: fileName,
      bytes: bytes,
    );
  }

  static Future<Uri?> saveVcfFile(
      Uint8List bytes,
      String fileName,
      String dialogTitle,
      ) async {
    return await FilePicker.saveFile(
      dialogTitle: dialogTitle,
      fileName: fileName,
      bytes: bytes,
    );
  }
}