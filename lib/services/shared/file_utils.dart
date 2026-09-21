import 'dart:io';
import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

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
    return _saveBytes(bytes, fileName, dialogTitle, 'xlsx');
  }

  static Future<Uri?> saveVcfFile(
      Uint8List bytes,
      String fileName,
      String dialogTitle,
      ) async {
    return _saveBytes(bytes, fileName, dialogTitle, 'vcf');
  }

  static Future<Uri?> _saveBytes(
      Uint8List bytes,
      String fileName,
      String dialogTitle,
      String extension,
      ) async {
    debugPrint('=== SAVE START ===');
    debugPrint('fileName: $fileName');
    debugPrint('bytes length: ${bytes.length}');

    final uri = await FilePicker.saveFile(
      dialogTitle: dialogTitle,
      fileName: fileName,
      bytes: bytes,
      type: FileType.custom,
      allowedExtensions: [extension],
    );

    debugPrint('saveFile returned uri: $uri');

    if (uri == null) {
      debugPrint('uri null, cancelled');
      return null;
    }

    final String path;
    if (uri.scheme == 'file') {
      path = uri.toFilePath();
    } else {
      path = uri.toString();
    }

    debugPrint('resolved path: $path');

    final file = File(path);
    await file.writeAsBytes(bytes, flush: true);

    final writtenLength = await file.length();
    debugPrint('file written: $writtenLength bytes');
    debugPrint('=== SAVE END ===');

    return uri;
  }
}