// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Javanese (`jv`).
class AppLocalizationsJv extends AppLocalizations {
  AppLocalizationsJv([String locale = 'jv']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'Ngamot...';

  @override
  String get homeTitle => 'Pilih tumindak';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Ngowahi file Excel dadi kontak';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Ngowahi kontak dadi file Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Versi Lite';

  @override
  String get vcfToExcelTitle => 'Ngowahi VCF dadi Excel';

  @override
  String get vcfToExcelStatusInitial => 'Pilih file VCF (.vcf) kanggo miwiti';

  @override
  String get vcfToExcelStatusSuccess => 'Rampung! File kasil disimpen.';

  @override
  String get vcfToExcelStatusCancelled => 'Pamilihan file dibatalake.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Nyimpen dibatalake.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Kesalahan: Ora ana kontak sing sah ing file kasebut.';

  @override
  String get vcfToExcelStatusError => 'Ana kesalahan nalika ngowahi.';

  @override
  String get vcfToExcelButton => 'Pilih File VCF';

  @override
  String get vcfToExcelPleaseWait => 'Mangga ngenteni...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Simpen file Excel';

  @override
  String get excelToVcfTitle => 'Ngowahi Excel dadi VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Pilih file Excel (.xlsx) kanggo miwiti';

  @override
  String get excelToVcfStatusSuccess => 'Rampung! File kasil disimpen.';

  @override
  String get excelToVcfStatusCancelled => 'Pamilihan file dibatalake.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Nyimpen dibatalake.';

  @override
  String get excelToVcfStatusEmpty =>
      'Kesalahan: Ora ana kontak sing sah ing file kasebut.';

  @override
  String get excelToVcfStatusError => 'Ana kesalahan nalika ngowahi.';

  @override
  String get excelToVcfButton => 'Pilih File Excel';

  @override
  String get excelToVcfPleaseWait => 'Mangga ngenteni...';

  @override
  String get excelToVcfSaveDialogTitle => 'Simpen file VCF';

  @override
  String get processingTitle => 'Ngowahi file...';

  @override
  String get processingSubtitle => 'Mangga ngenteni, proses isih mlaku.';

  @override
  String get licenseBadgeActive => 'Lisensi Aktif';

  @override
  String get licenseBadgeTrial => 'Versi Uji Coba';

  @override
  String get licenseDialogTitle => 'Watesan Uji Coba Tekan';

  @override
  String get licenseDialogContent =>
      'Sampeyan wis nggunakake uji coba gratis sepisan. Kanggo nerusake, mangga lebokake kode lisensi sampeyan.';

  @override
  String get licenseDialogClose => 'Tutup';

  @override
  String get licenseDialogEnter => 'Lebokake Lisensi';

  @override
  String get licenseScreenTitle =>
      'Lebokake kode lisensi sampeyan kanggo nerusake';

  @override
  String get licenseFieldHint => 'Kode lisensi';

  @override
  String get licenseButtonVerify => 'Verifikasi';

  @override
  String get licenseErrorEmpty => 'Mangga lebokake kode lisensi sampeyan.';

  @override
  String get licenseErrorInvalid =>
      'Kode lisensi ora sah. Mangga priksa maneh.';

  @override
  String get licenseSuccessTitle => 'Lisensi wis diverifikasi!';

  @override
  String get licenseButtonBack => 'Bali';

  @override
  String get aboutDescription =>
      'Piranti prasaja kanggo ngowahi file Excel dadi kontak VCF lan kosok baline.';

  @override
  String get aboutClose => 'Tutup';

  @override
  String get settingsTitle => 'Setelan';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Peteng';

  @override
  String get settingsThemeLight => 'Padhang';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsDefaultFileName => 'Jeneng file standar';

  @override
  String get settingsDefaultFileNameHint => 'Kontak';

  @override
  String get settingsVcfVersion => 'Versi VCF';

  @override
  String get settingsLanguage => 'Basa';

  @override
  String get settingsLanguageSystem => 'Sistem';

  @override
  String get aboutDownloadTemplate => 'Ngundhuh Cithakan Excel';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
