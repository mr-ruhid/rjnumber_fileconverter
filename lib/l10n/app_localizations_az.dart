// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Fayl Çevirici';

  @override
  String get splashLoading => 'Yüklənir...';

  @override
  String get homeTitle => 'Bir əməliyyat seçin';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel faylını kontaktlara çevir';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Kontaktları Excel faylına çevir';

  @override
  String get homeFooter => 'Ruhid Cavadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite versiya';

  @override
  String get vcfToExcelTitle => 'VCF-i Excel-ə çevir';

  @override
  String get vcfToExcelStatusInitial => 'Başlamaq üçün VCF (.vcf) faylı seçin';

  @override
  String get vcfToExcelStatusSuccess => 'Hazır! Fayl uğurla yadda saxlanıldı.';

  @override
  String get vcfToExcelStatusCancelled => 'Fayl seçimi ləğv edildi.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Yadda saxlama ləğv edildi.';

  @override
  String get vcfToExcelStatusEmpty => 'Xəta: Faylda uyğun kontakt tapılmadı.';

  @override
  String get vcfToExcelStatusError => 'Çevirmə zamanı xəta baş verdi.';

  @override
  String get vcfToExcelButton => 'VCF Faylını Seç';

  @override
  String get vcfToExcelPleaseWait => 'Zəhmət olmasa gözləyin...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Excel faylını yadda saxla';

  @override
  String get excelToVcfTitle => 'Excel-i VCF-ə çevir';

  @override
  String get excelToVcfStatusInitial =>
      'Başlamaq üçün Excel (.xlsx) faylı seçin';

  @override
  String get excelToVcfStatusSuccess => 'Hazır! Fayl uğurla yadda saxlanıldı.';

  @override
  String get excelToVcfStatusCancelled => 'Fayl seçimi ləğv edildi.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Yadda saxlama ləğv edildi.';

  @override
  String get excelToVcfStatusEmpty => 'Xəta: Faylda uyğun kontakt tapılmadı.';

  @override
  String get excelToVcfStatusError => 'Çevirmə zamanı xəta baş verdi.';

  @override
  String get excelToVcfButton => 'Excel Faylını Seç';

  @override
  String get excelToVcfPleaseWait => 'Zəhmət olmasa gözləyin...';

  @override
  String get excelToVcfSaveDialogTitle => 'VCF faylını yadda saxla';

  @override
  String get processingTitle => 'Fayl çevrilir...';

  @override
  String get processingSubtitle => 'Zəhmət olmasa gözləyin, proses davam edir.';

  @override
  String get licenseBadgeActive => 'Lisenziya Aktivdir';

  @override
  String get licenseBadgeTrial => 'Sınaq Versiyası';

  @override
  String get licenseDialogTitle => 'Sınaq Limiti Bitdi';

  @override
  String get licenseDialogContent =>
      'Siz artıq 1 dəfəlik pulsuz sınaq hüququnuzdan istifadə etmisiniz. Davam etmək üçün zəhmət olmasa lisenziya kodunu daxil edin.';

  @override
  String get licenseDialogClose => 'Bağla';

  @override
  String get licenseDialogEnter => 'Lisenziya Daxil Et';

  @override
  String get licenseScreenTitle =>
      'Davam etmək üçün lisenziya kodunu daxil edin';

  @override
  String get licenseFieldHint => 'Lisenziya kodu';

  @override
  String get licenseButtonVerify => 'Yoxla';

  @override
  String get licenseErrorEmpty => 'Zəhmət olmasa lisenziya kodunu daxil edin.';

  @override
  String get licenseErrorInvalid => 'Yanlış lisenziya kodu. Yenidən yoxlayın.';

  @override
  String get licenseSuccessTitle => 'Lisenziya təsdiqləndi!';

  @override
  String get licenseButtonBack => 'Geri qayıt';

  @override
  String get aboutDescription =>
      'Excel fayllarını VCF kontaktlarına və geriyə çevirmək üçün sadə alət.';

  @override
  String get aboutClose => 'Bağla';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Tünd';

  @override
  String get settingsThemeLight => 'İşıqlı';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsDefaultFileName => 'Standart fayl adı';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'VCF versiyası';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get settingsLanguageSystem => 'Sistem';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
