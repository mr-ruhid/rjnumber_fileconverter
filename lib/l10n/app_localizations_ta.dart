// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'ஏற்றுகிறது...';

  @override
  String get homeTitle => 'ஒரு செயலைத் தேர்ந்தெடுக்கவும்';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel கோப்பை தொடர்புகளாக மாற்றவும்';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'தொடர்புகளை Excel கோப்பாக மாற்றவும்';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite பதிப்பு';

  @override
  String get vcfToExcelTitle => 'VCF ஐ Excel ஆக மாற்றவும்';

  @override
  String get vcfToExcelStatusInitial =>
      'தொடங்க VCF (.vcf) கோப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get vcfToExcelStatusSuccess =>
      'முடிந்தது! கோப்பு வெற்றிகரமாக சேமிக்கப்பட்டது.';

  @override
  String get vcfToExcelStatusCancelled => 'கோப்பு தேர்வு ரத்து செய்யப்பட்டது.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'சேமிப்பு ரத்து செய்யப்பட்டது.';

  @override
  String get vcfToExcelStatusEmpty =>
      'பிழை: கோப்பில் செல்லுபடியாகும் தொடர்புகள் எதுவும் கிடைக்கவில்லை.';

  @override
  String get vcfToExcelStatusError => 'மாற்றத்தின் போது பிழை ஏற்பட்டது.';

  @override
  String get vcfToExcelButton => 'VCF கோப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get vcfToExcelPleaseWait => 'தயவுசெய்து காத்திருக்கவும்...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Excel கோப்பை சேமிக்கவும்';

  @override
  String get excelToVcfTitle => 'Excel ஐ VCF ஆக மாற்றவும்';

  @override
  String get excelToVcfStatusInitial =>
      'தொடங்க Excel (.xlsx) கோப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get excelToVcfStatusSuccess =>
      'முடிந்தது! கோப்பு வெற்றிகரமாக சேமிக்கப்பட்டது.';

  @override
  String get excelToVcfStatusCancelled => 'கோப்பு தேர்வு ரத்து செய்யப்பட்டது.';

  @override
  String get excelToVcfStatusSaveCancelled => 'சேமிப்பு ரத்து செய்யப்பட்டது.';

  @override
  String get excelToVcfStatusEmpty =>
      'பிழை: கோப்பில் செல்லுபடியாகும் தொடர்புகள் எதுவும் கிடைக்கவில்லை.';

  @override
  String get excelToVcfStatusError => 'மாற்றத்தின் போது பிழை ஏற்பட்டது.';

  @override
  String get excelToVcfButton => 'Excel கோப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get excelToVcfPleaseWait => 'தயவுசெய்து காத்திருக்கவும்...';

  @override
  String get excelToVcfSaveDialogTitle => 'VCF கோப்பை சேமிக்கவும்';

  @override
  String get processingTitle => 'கோப்பு மாற்றப்படுகிறது...';

  @override
  String get processingSubtitle =>
      'தயவுசெய்து காத்திருக்கவும், செயல்முறை இயங்குகிறது.';

  @override
  String get licenseBadgeActive => 'உரிமம் செயலில்';

  @override
  String get licenseBadgeTrial => 'சோதனை பதிப்பு';

  @override
  String get licenseDialogTitle => 'சோதனை வரம்பு எட்டப்பட்டது';

  @override
  String get licenseDialogContent =>
      'நீங்கள் ஏற்கனவே உங்கள் ஒரு முறை இலவச சோதனையைப் பயன்படுத்தியுள்ளீர்கள். தொடர, தயவுசெய்து உங்கள் உரிமக் குறியீட்டை உள்ளிடவும்.';

  @override
  String get licenseDialogClose => 'மூடு';

  @override
  String get licenseDialogEnter => 'உரிமத்தை உள்ளிடவும்';

  @override
  String get licenseScreenTitle => 'தொடர உங்கள் உரிமக் குறியீட்டை உள்ளிடவும்';

  @override
  String get licenseFieldHint => 'உரிமக் குறியீடு';

  @override
  String get licenseButtonVerify => 'சரிபார்க்கவும்';

  @override
  String get licenseErrorEmpty =>
      'தயவுசெய்து உங்கள் உரிமக் குறியீட்டை உள்ளிடவும்.';

  @override
  String get licenseErrorInvalid =>
      'தவறான உரிமக் குறியீடு. தயவுசெய்து மீண்டும் சரிபார்க்கவும்.';

  @override
  String get licenseSuccessTitle => 'உரிமம் சரிபார்க்கப்பட்டது!';

  @override
  String get licenseButtonBack => 'திரும்பிச் செல்லவும்';

  @override
  String get aboutDescription =>
      'Excel கோப்புகளை VCF தொடர்புகளாக மாற்றவும், மீண்டும் மாற்றவும் ஒரு எளிய கருவி.';

  @override
  String get aboutClose => 'மூடு';

  @override
  String get settingsTitle => 'அமைப்புகள்';

  @override
  String get settingsTheme => 'தீம்';

  @override
  String get settingsThemeDark => 'இருண்ட';

  @override
  String get settingsThemeLight => 'ஒளி';

  @override
  String get settingsThemeSystem => 'சிஸ்டம்';

  @override
  String get settingsDefaultFileName => 'இயல்புநிலை கோப்பு பெயர்';

  @override
  String get settingsDefaultFileNameHint => 'தொடர்புகள்';

  @override
  String get settingsVcfVersion => 'VCF பதிப்பு';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
