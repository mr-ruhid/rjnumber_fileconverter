// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'טוען...';

  @override
  String get homeTitle => 'בחר פעולה';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'המר קובץ Excel לאנשי קשר';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'המר אנשי קשר לקובץ Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'גרסת Lite';

  @override
  String get vcfToExcelTitle => 'המר VCF ל-Excel';

  @override
  String get vcfToExcelStatusInitial => 'בחר קובץ VCF (.vcf) כדי להתחיל';

  @override
  String get vcfToExcelStatusSuccess => 'הושלם! הקובץ נשמר בהצלחה.';

  @override
  String get vcfToExcelStatusCancelled => 'בחירת הקובץ בוטלה.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'השמירה בוטלה.';

  @override
  String get vcfToExcelStatusEmpty => 'שגיאה: לא נמצאו אנשי קשר תקינים בקובץ.';

  @override
  String get vcfToExcelStatusError => 'אירעה שגיאה במהלך ההמרה.';

  @override
  String get vcfToExcelButton => 'בחר קובץ VCF';

  @override
  String get vcfToExcelPleaseWait => 'אנא המתן...';

  @override
  String get vcfToExcelSaveDialogTitle => 'שמור קובץ Excel';

  @override
  String get excelToVcfTitle => 'המר Excel ל-VCF';

  @override
  String get excelToVcfStatusInitial => 'בחר קובץ Excel (.xlsx) כדי להתחיל';

  @override
  String get excelToVcfStatusSuccess => 'הושלם! הקובץ נשמר בהצלחה.';

  @override
  String get excelToVcfStatusCancelled => 'בחירת הקובץ בוטלה.';

  @override
  String get excelToVcfStatusSaveCancelled => 'השמירה בוטלה.';

  @override
  String get excelToVcfStatusEmpty => 'שגיאה: לא נמצאו אנשי קשר תקינים בקובץ.';

  @override
  String get excelToVcfStatusError => 'אירעה שגיאה במהלך ההמרה.';

  @override
  String get excelToVcfButton => 'בחר קובץ Excel';

  @override
  String get excelToVcfPleaseWait => 'אנא המתן...';

  @override
  String get excelToVcfSaveDialogTitle => 'שמור קובץ VCF';

  @override
  String get processingTitle => 'ממיר קובץ...';

  @override
  String get processingSubtitle => 'אנא המתן, התהליך פועל.';

  @override
  String get licenseBadgeActive => 'רישיון פעיל';

  @override
  String get licenseBadgeTrial => 'גרסת ניסיון';

  @override
  String get licenseDialogTitle => 'הגעת למגבלת הניסיון';

  @override
  String get licenseDialogContent =>
      'כבר השתמשת בניסיון החינמי החד-פעמי שלך. כדי להמשיך, אנא הזן את קוד הרישיון שלך.';

  @override
  String get licenseDialogClose => 'סגור';

  @override
  String get licenseDialogEnter => 'הזן רישיון';

  @override
  String get licenseScreenTitle => 'הזן את קוד הרישיון שלך כדי להמשיך';

  @override
  String get licenseFieldHint => 'קוד רישיון';

  @override
  String get licenseButtonVerify => 'אמת';

  @override
  String get licenseErrorEmpty => 'אנא הזן את קוד הרישיון שלך.';

  @override
  String get licenseErrorInvalid => 'קוד רישיון לא תקין. אנא בדוק שוב.';

  @override
  String get licenseSuccessTitle => 'הרישיון אומת!';

  @override
  String get licenseButtonBack => 'חזור';

  @override
  String get aboutDescription =>
      'כלי פשוט להמרת קבצי Excel לאנשי קשר VCF ובחזרה.';

  @override
  String get aboutClose => 'סגור';

  @override
  String get settingsTitle => 'הגדרות';

  @override
  String get settingsTheme => 'ערכת נושא';

  @override
  String get settingsThemeDark => 'כהה';

  @override
  String get settingsThemeLight => 'בהיר';

  @override
  String get settingsThemeSystem => 'מערכת';

  @override
  String get settingsDefaultFileName => 'שם קובץ ברירת מחדל';

  @override
  String get settingsDefaultFileNameHint => 'אנשי קשר';

  @override
  String get settingsVcfVersion => 'גרסת VCF';

  @override
  String get settingsLanguage => 'שפה';

  @override
  String get settingsLanguageSystem => 'מערכת';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
