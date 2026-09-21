// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Dosya Dönüştürücü';

  @override
  String get splashLoading => 'Yükleniyor...';

  @override
  String get homeTitle => 'Bir işlem seçin';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel dosyasını kişilere dönüştür';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Kişileri Excel dosyasına dönüştür';

  @override
  String get homeFooter => 'Ruhid Cavadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite sürüm';

  @override
  String get vcfToExcelTitle => 'VCF\'yi Excel\'e dönüştür';

  @override
  String get vcfToExcelStatusInitial =>
      'Başlamak için bir VCF (.vcf) dosyası seçin';

  @override
  String get vcfToExcelStatusSuccess => 'Tamam! Dosya başarıyla kaydedildi.';

  @override
  String get vcfToExcelStatusCancelled => 'Dosya seçimi iptal edildi.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Kaydetme iptal edildi.';

  @override
  String get vcfToExcelStatusEmpty => 'Hata: Dosyada geçerli kişi bulunamadı.';

  @override
  String get vcfToExcelStatusError => 'Dönüştürme sırasında bir hata oluştu.';

  @override
  String get vcfToExcelButton => 'VCF Dosyası Seç';

  @override
  String get vcfToExcelPleaseWait => 'Lütfen bekleyin...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Excel dosyasını kaydet';

  @override
  String get excelToVcfTitle => 'Excel\'i VCF\'ye dönüştür';

  @override
  String get excelToVcfStatusInitial =>
      'Başlamak için bir Excel (.xlsx) dosyası seçin';

  @override
  String get excelToVcfStatusSuccess => 'Tamam! Dosya başarıyla kaydedildi.';

  @override
  String get excelToVcfStatusCancelled => 'Dosya seçimi iptal edildi.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Kaydetme iptal edildi.';

  @override
  String get excelToVcfStatusEmpty => 'Hata: Dosyada geçerli kişi bulunamadı.';

  @override
  String get excelToVcfStatusError => 'Dönüştürme sırasında bir hata oluştu.';

  @override
  String get excelToVcfButton => 'Excel Dosyası Seç';

  @override
  String get excelToVcfPleaseWait => 'Lütfen bekleyin...';

  @override
  String get excelToVcfSaveDialogTitle => 'VCF dosyasını kaydet';

  @override
  String get processingTitle => 'Dosya dönüştürülüyor...';

  @override
  String get processingSubtitle => 'Lütfen bekleyin, işlem devam ediyor.';

  @override
  String get licenseBadgeActive => 'Lisans Aktif';

  @override
  String get licenseBadgeTrial => 'Deneme Sürümü';

  @override
  String get licenseDialogTitle => 'Deneme Sınırına Ulaşıldı';

  @override
  String get licenseDialogContent =>
      'Bir kerelik ücretsiz deneme hakkınızı zaten kullandınız. Devam etmek için lütfen lisans kodunuzu girin.';

  @override
  String get licenseDialogClose => 'Kapat';

  @override
  String get licenseDialogEnter => 'Lisans Gir';

  @override
  String get licenseScreenTitle => 'Devam etmek için lisans kodunuzu girin';

  @override
  String get licenseFieldHint => 'Lisans kodu';

  @override
  String get licenseButtonVerify => 'Doğrula';

  @override
  String get licenseErrorEmpty => 'Lütfen lisans kodunuzu girin.';

  @override
  String get licenseErrorInvalid =>
      'Geçersiz lisans kodu. Lütfen tekrar kontrol edin.';

  @override
  String get licenseSuccessTitle => 'Lisans doğrulandı!';

  @override
  String get licenseButtonBack => 'Geri dön';

  @override
  String get aboutDescription =>
      'Excel dosyalarını VCF kişilerine ve geri dönüştürmek için basit bir araç.';

  @override
  String get aboutClose => 'Kapat';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Koyu';

  @override
  String get settingsThemeLight => 'Açık';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsDefaultFileName => 'Varsayılan dosya adı';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'VCF sürümü';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get settingsLanguageSystem => 'Sistem';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
