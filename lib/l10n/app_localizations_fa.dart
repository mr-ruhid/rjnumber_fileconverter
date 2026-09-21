// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'در حال بارگذاری...';

  @override
  String get homeTitle => 'یک عمل را انتخاب کنید';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'تبدیل فایل Excel به مخاطبین';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'تبدیل مخاطبین به فایل Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'نسخه Lite';

  @override
  String get vcfToExcelTitle => 'تبدیل VCF به Excel';

  @override
  String get vcfToExcelStatusInitial =>
      'برای شروع یک فایل VCF (.vcf) انتخاب کنید';

  @override
  String get vcfToExcelStatusSuccess => 'انجام شد! فایل با موفقیت ذخیره شد.';

  @override
  String get vcfToExcelStatusCancelled => 'انتخاب فایل لغو شد.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'ذخیره‌سازی لغو شد.';

  @override
  String get vcfToExcelStatusEmpty => 'خطا: هیچ مخاطب معتبری در فایل یافت نشد.';

  @override
  String get vcfToExcelStatusError => 'خطایی در حین تبدیل رخ داد.';

  @override
  String get vcfToExcelButton => 'انتخاب فایل VCF';

  @override
  String get vcfToExcelPleaseWait => 'لطفاً صبر کنید...';

  @override
  String get vcfToExcelSaveDialogTitle => 'ذخیره فایل Excel';

  @override
  String get excelToVcfTitle => 'تبدیل Excel به VCF';

  @override
  String get excelToVcfStatusInitial =>
      'برای شروع یک فایل Excel (.xlsx) انتخاب کنید';

  @override
  String get excelToVcfStatusSuccess => 'انجام شد! فایل با موفقیت ذخیره شد.';

  @override
  String get excelToVcfStatusCancelled => 'انتخاب فایل لغو شد.';

  @override
  String get excelToVcfStatusSaveCancelled => 'ذخیره‌سازی لغو شد.';

  @override
  String get excelToVcfStatusEmpty => 'خطا: هیچ مخاطب معتبری در فایل یافت نشد.';

  @override
  String get excelToVcfStatusError => 'خطایی در حین تبدیل رخ داد.';

  @override
  String get excelToVcfButton => 'انتخاب فایل Excel';

  @override
  String get excelToVcfPleaseWait => 'لطفاً صبر کنید...';

  @override
  String get excelToVcfSaveDialogTitle => 'ذخیره فایل VCF';

  @override
  String get processingTitle => 'در حال تبدیل فایل...';

  @override
  String get processingSubtitle => 'لطفاً صبر کنید، فرآیند در حال اجراست.';

  @override
  String get licenseBadgeActive => 'لایسنس فعال';

  @override
  String get licenseBadgeTrial => 'نسخه آزمایشی';

  @override
  String get licenseDialogTitle => 'محدودیت آزمایشی به پایان رسید';

  @override
  String get licenseDialogContent =>
      'شما قبلاً از آزمایش رایگان یک‌باره خود استفاده کرده‌اید. برای ادامه، لطفاً کد لایسنس خود را وارد کنید.';

  @override
  String get licenseDialogClose => 'بستن';

  @override
  String get licenseDialogEnter => 'وارد کردن لایسنس';

  @override
  String get licenseScreenTitle => 'برای ادامه کد لایسنس خود را وارد کنید';

  @override
  String get licenseFieldHint => 'کد لایسنس';

  @override
  String get licenseButtonVerify => 'تأیید';

  @override
  String get licenseErrorEmpty => 'لطفاً کد لایسنس خود را وارد کنید.';

  @override
  String get licenseErrorInvalid =>
      'کد لایسنس نامعتبر است. لطفاً دوباره بررسی کنید.';

  @override
  String get licenseSuccessTitle => 'لایسنس تأیید شد!';

  @override
  String get licenseButtonBack => 'بازگشت';

  @override
  String get aboutDescription =>
      'ابزاری ساده برای تبدیل فایل‌های Excel به مخاطبین VCF و برعکس.';

  @override
  String get aboutClose => 'بستن';

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get settingsTheme => 'پوسته';

  @override
  String get settingsThemeDark => 'تیره';

  @override
  String get settingsThemeLight => 'روشن';

  @override
  String get settingsThemeSystem => 'سیستم';

  @override
  String get settingsDefaultFileName => 'نام پیش‌فرض فایل';

  @override
  String get settingsDefaultFileNameHint => 'مخاطبین';

  @override
  String get settingsVcfVersion => 'نسخه VCF';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsLanguageSystem => 'سیستم';

  @override
  String get aboutDownloadTemplate => 'دانلود قالب Excel';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
