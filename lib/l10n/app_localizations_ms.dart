// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'Memuatkan...';

  @override
  String get homeTitle => 'Pilih satu tindakan';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Tukar fail Excel kepada kenalan';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Tukar kenalan kepada fail Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Versi Lite';

  @override
  String get vcfToExcelTitle => 'Tukar VCF kepada Excel';

  @override
  String get vcfToExcelStatusInitial => 'Pilih fail VCF (.vcf) untuk mula';

  @override
  String get vcfToExcelStatusSuccess => 'Selesai! Fail berjaya disimpan.';

  @override
  String get vcfToExcelStatusCancelled => 'Pemilihan fail dibatalkan.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Penyimpanan dibatalkan.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Ralat: Tiada kenalan sah ditemui dalam fail.';

  @override
  String get vcfToExcelStatusError => 'Ralat berlaku semasa penukaran.';

  @override
  String get vcfToExcelButton => 'Pilih Fail VCF';

  @override
  String get vcfToExcelPleaseWait => 'Sila tunggu...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Simpan fail Excel';

  @override
  String get excelToVcfTitle => 'Tukar Excel kepada VCF';

  @override
  String get excelToVcfStatusInitial => 'Pilih fail Excel (.xlsx) untuk mula';

  @override
  String get excelToVcfStatusSuccess => 'Selesai! Fail berjaya disimpan.';

  @override
  String get excelToVcfStatusCancelled => 'Pemilihan fail dibatalkan.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Penyimpanan dibatalkan.';

  @override
  String get excelToVcfStatusEmpty =>
      'Ralat: Tiada kenalan sah ditemui dalam fail.';

  @override
  String get excelToVcfStatusError => 'Ralat berlaku semasa penukaran.';

  @override
  String get excelToVcfButton => 'Pilih Fail Excel';

  @override
  String get excelToVcfPleaseWait => 'Sila tunggu...';

  @override
  String get excelToVcfSaveDialogTitle => 'Simpan fail VCF';

  @override
  String get processingTitle => 'Menukar fail...';

  @override
  String get processingSubtitle => 'Sila tunggu, proses sedang berjalan.';

  @override
  String get licenseBadgeActive => 'Lesen Aktif';

  @override
  String get licenseBadgeTrial => 'Versi Percubaan';

  @override
  String get licenseDialogTitle => 'Had Percubaan Dicapai';

  @override
  String get licenseDialogContent =>
      'Anda telah menggunakan percubaan percuma sekali sahaja. Untuk meneruskan, sila masukkan kod lesen anda.';

  @override
  String get licenseDialogClose => 'Tutup';

  @override
  String get licenseDialogEnter => 'Masukkan Lesen';

  @override
  String get licenseScreenTitle => 'Masukkan kod lesen anda untuk meneruskan';

  @override
  String get licenseFieldHint => 'Kod lesen';

  @override
  String get licenseButtonVerify => 'Sahkan';

  @override
  String get licenseErrorEmpty => 'Sila masukkan kod lesen anda.';

  @override
  String get licenseErrorInvalid => 'Kod lesen tidak sah. Sila semak semula.';

  @override
  String get licenseSuccessTitle => 'Lesen disahkan!';

  @override
  String get licenseButtonBack => 'Kembali';

  @override
  String get aboutDescription =>
      'Alat mudah untuk menukar fail Excel kepada kenalan VCF dan sebaliknya.';

  @override
  String get aboutClose => 'Tutup';

  @override
  String get settingsTitle => 'Tetapan';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Gelap';

  @override
  String get settingsThemeLight => 'Cerah';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsDefaultFileName => 'Nama fail lalai';

  @override
  String get settingsDefaultFileNameHint => 'Kenalan';

  @override
  String get settingsVcfVersion => 'Versi VCF';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsLanguageSystem => 'Sistem';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
