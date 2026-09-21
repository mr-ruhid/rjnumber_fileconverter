// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'RJ Number - محول الملفات';

  @override
  String get splashLoading => 'جارٍ التحميل...';

  @override
  String get homeTitle => 'اختر إجراءً';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'تحويل ملف Excel إلى جهات اتصال';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'تحويل جهات الاتصال إلى ملف Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'إصدار Lite';

  @override
  String get vcfToExcelTitle => 'تحويل VCF إلى Excel';

  @override
  String get vcfToExcelStatusInitial => 'اختر ملف VCF (.vcf) للبدء';

  @override
  String get vcfToExcelStatusSuccess => 'تم! تم حفظ الملف بنجاح.';

  @override
  String get vcfToExcelStatusCancelled => 'تم إلغاء اختيار الملف.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'تم إلغاء الحفظ.';

  @override
  String get vcfToExcelStatusEmpty =>
      'خطأ: لم يتم العثور على جهات اتصال صالحة في الملف.';

  @override
  String get vcfToExcelStatusError => 'حدث خطأ أثناء التحويل.';

  @override
  String get vcfToExcelButton => 'اختر ملف VCF';

  @override
  String get vcfToExcelPleaseWait => 'يرجى الانتظار...';

  @override
  String get vcfToExcelSaveDialogTitle => 'حفظ ملف Excel';

  @override
  String get excelToVcfTitle => 'تحويل Excel إلى VCF';

  @override
  String get excelToVcfStatusInitial => 'اختر ملف Excel (.xlsx) للبدء';

  @override
  String get excelToVcfStatusSuccess => 'تم! تم حفظ الملف بنجاح.';

  @override
  String get excelToVcfStatusCancelled => 'تم إلغاء اختيار الملف.';

  @override
  String get excelToVcfStatusSaveCancelled => 'تم إلغاء الحفظ.';

  @override
  String get excelToVcfStatusEmpty =>
      'خطأ: لم يتم العثور على جهات اتصال صالحة في الملف.';

  @override
  String get excelToVcfStatusError => 'حدث خطأ أثناء التحويل.';

  @override
  String get excelToVcfButton => 'اختر ملف Excel';

  @override
  String get excelToVcfPleaseWait => 'يرجى الانتظار...';

  @override
  String get excelToVcfSaveDialogTitle => 'حفظ ملف VCF';

  @override
  String get processingTitle => 'جارٍ تحويل الملف...';

  @override
  String get processingSubtitle => 'يرجى الانتظار، العملية قيد التنفيذ.';

  @override
  String get licenseBadgeActive => 'الترخيص نشط';

  @override
  String get licenseBadgeTrial => 'إصدار تجريبي';

  @override
  String get licenseDialogTitle => 'تم الوصول إلى حد النسخة التجريبية';

  @override
  String get licenseDialogContent =>
      'لقد استخدمت بالفعل نسختك التجريبية المجانية لمرة واحدة. للمتابعة، يرجى إدخال رمز الترخيص.';

  @override
  String get licenseDialogClose => 'إغلاق';

  @override
  String get licenseDialogEnter => 'إدخال الترخيص';

  @override
  String get licenseScreenTitle => 'أدخل رمز الترخيص للمتابعة';

  @override
  String get licenseFieldHint => 'رمز الترخيص';

  @override
  String get licenseButtonVerify => 'تحقق';

  @override
  String get licenseErrorEmpty => 'يرجى إدخال رمز الترخيص.';

  @override
  String get licenseErrorInvalid => 'رمز ترخيص غير صالح. يرجى التحقق مرة أخرى.';

  @override
  String get licenseSuccessTitle => 'تم التحقق من الترخيص!';

  @override
  String get licenseButtonBack => 'رجوع';

  @override
  String get aboutDescription =>
      'أداة بسيطة لتحويل ملفات Excel إلى جهات اتصال VCF والعكس.';

  @override
  String get aboutClose => 'إغلاق';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsTheme => 'المظهر';

  @override
  String get settingsThemeDark => 'داكن';

  @override
  String get settingsThemeLight => 'فاتح';

  @override
  String get settingsThemeSystem => 'النظام';

  @override
  String get settingsDefaultFileName => 'اسم الملف الافتراضي';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'إصدار VCF';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
