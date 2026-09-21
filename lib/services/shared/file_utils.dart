import 'dart:io';
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
    final uri = await FilePicker.saveFile(
      dialogTitle: dialogTitle,
      fileName: fileName,
      bytes: bytes,
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );

    if (uri == null) return null;

    final file = File.fromUri(uri);
    await file.writeAsBytes(bytes, flush: true);

    return uri;
  }

  static Future<Uri?> saveVcfFile(
      Uint8List bytes,
      String fileName,
      String dialogTitle,
      ) async {
    final uri = await FilePicker.saveFile(
      dialogTitle: dialogTitle,
      fileName: fileName,
      bytes: bytes,
      type: FileType.custom,
      allowedExtensions: ['vcf'],
    );

    if (uri == null) return null;

    final file = File.fromUri(uri);
    await file.writeAsBytes(bytes, flush: true);

    return uri;
  }
}