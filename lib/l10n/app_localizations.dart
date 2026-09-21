import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('az'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('ha'),
    Locale('he'),
    Locale('hi'),
    Locale('hy'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('jv'),
    Locale('ka'),
    Locale('ko'),
    Locale('mr'),
    Locale('ms'),
    Locale('nl'),
    Locale('pa'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tl'),
    Locale('tr'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'RJ Number - File Converter'**
  String get appTitle;

  /// No description provided for @splashLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get splashLoading;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose an action'**
  String get homeTitle;

  /// No description provided for @homeExcelToVcf.
  ///
  /// In en, this message translates to:
  /// **'Excel → VCF'**
  String get homeExcelToVcf;

  /// No description provided for @homeExcelToVcfDesc.
  ///
  /// In en, this message translates to:
  /// **'Convert Excel file to contacts'**
  String get homeExcelToVcfDesc;

  /// No description provided for @homeVcfToExcel.
  ///
  /// In en, this message translates to:
  /// **'VCF → Excel'**
  String get homeVcfToExcel;

  /// No description provided for @homeVcfToExcelDesc.
  ///
  /// In en, this message translates to:
  /// **'Convert contacts to Excel file'**
  String get homeVcfToExcelDesc;

  /// No description provided for @homeFooter.
  ///
  /// In en, this message translates to:
  /// **'Ruhid Javadov - Mr-Ruhid'**
  String get homeFooter;

  /// No description provided for @homeVersion.
  ///
  /// In en, this message translates to:
  /// **'Lite version'**
  String get homeVersion;

  /// No description provided for @vcfToExcelTitle.
  ///
  /// In en, this message translates to:
  /// **'Convert VCF to Excel'**
  String get vcfToExcelTitle;

  /// No description provided for @vcfToExcelStatusInitial.
  ///
  /// In en, this message translates to:
  /// **'Select a VCF (.vcf) file to start'**
  String get vcfToExcelStatusInitial;

  /// No description provided for @vcfToExcelStatusSuccess.
  ///
  /// In en, this message translates to:
  /// **'Done! File saved successfully.'**
  String get vcfToExcelStatusSuccess;

  /// No description provided for @vcfToExcelStatusCancelled.
  ///
  /// In en, this message translates to:
  /// **'File selection cancelled.'**
  String get vcfToExcelStatusCancelled;

  /// No description provided for @vcfToExcelStatusSaveCancelled.
  ///
  /// In en, this message translates to:
  /// **'Saving was cancelled.'**
  String get vcfToExcelStatusSaveCancelled;

  /// No description provided for @vcfToExcelStatusEmpty.
  ///
  /// In en, this message translates to:
  /// **'Error: No valid contacts found in the file.'**
  String get vcfToExcelStatusEmpty;

  /// No description provided for @vcfToExcelStatusError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during conversion.'**
  String get vcfToExcelStatusError;

  /// No description provided for @vcfToExcelButton.
  ///
  /// In en, this message translates to:
  /// **'Select VCF File'**
  String get vcfToExcelButton;

  /// No description provided for @vcfToExcelPleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get vcfToExcelPleaseWait;

  /// No description provided for @vcfToExcelSaveDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Save Excel file'**
  String get vcfToExcelSaveDialogTitle;

  /// No description provided for @excelToVcfTitle.
  ///
  /// In en, this message translates to:
  /// **'Convert Excel to VCF'**
  String get excelToVcfTitle;

  /// No description provided for @excelToVcfStatusInitial.
  ///
  /// In en, this message translates to:
  /// **'Select an Excel (.xlsx) file to start'**
  String get excelToVcfStatusInitial;

  /// No description provided for @excelToVcfStatusSuccess.
  ///
  /// In en, this message translates to:
  /// **'Done! File saved successfully.'**
  String get excelToVcfStatusSuccess;

  /// No description provided for @excelToVcfStatusCancelled.
  ///
  /// In en, this message translates to:
  /// **'File selection cancelled.'**
  String get excelToVcfStatusCancelled;

  /// No description provided for @excelToVcfStatusSaveCancelled.
  ///
  /// In en, this message translates to:
  /// **'Saving was cancelled.'**
  String get excelToVcfStatusSaveCancelled;

  /// No description provided for @excelToVcfStatusEmpty.
  ///
  /// In en, this message translates to:
  /// **'Error: No valid contacts found in the file.'**
  String get excelToVcfStatusEmpty;

  /// No description provided for @excelToVcfStatusError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during conversion.'**
  String get excelToVcfStatusError;

  /// No description provided for @excelToVcfButton.
  ///
  /// In en, this message translates to:
  /// **'Select Excel File'**
  String get excelToVcfButton;

  /// No description provided for @excelToVcfPleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get excelToVcfPleaseWait;

  /// No description provided for @excelToVcfSaveDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Save VCF file'**
  String get excelToVcfSaveDialogTitle;

  /// No description provided for @processingTitle.
  ///
  /// In en, this message translates to:
  /// **'Converting file...'**
  String get processingTitle;

  /// No description provided for @processingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Please wait, the process is running.'**
  String get processingSubtitle;

  /// No description provided for @licenseBadgeActive.
  ///
  /// In en, this message translates to:
  /// **'License Active'**
  String get licenseBadgeActive;

  /// No description provided for @licenseBadgeTrial.
  ///
  /// In en, this message translates to:
  /// **'Trial Version'**
  String get licenseBadgeTrial;

  /// No description provided for @licenseDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Trial Limit Reached'**
  String get licenseDialogTitle;

  /// No description provided for @licenseDialogContent.
  ///
  /// In en, this message translates to:
  /// **'You have already used your one-time free trial. To continue, please enter your license code.'**
  String get licenseDialogContent;

  /// No description provided for @licenseDialogClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get licenseDialogClose;

  /// No description provided for @licenseDialogEnter.
  ///
  /// In en, this message translates to:
  /// **'Enter License'**
  String get licenseDialogEnter;

  /// No description provided for @licenseScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your license code to continue'**
  String get licenseScreenTitle;

  /// No description provided for @licenseFieldHint.
  ///
  /// In en, this message translates to:
  /// **'License code'**
  String get licenseFieldHint;

  /// No description provided for @licenseButtonVerify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get licenseButtonVerify;

  /// No description provided for @licenseErrorEmpty.
  ///
  /// In en, this message translates to:
  /// **'Please enter your license code.'**
  String get licenseErrorEmpty;

  /// No description provided for @licenseErrorInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid license code. Please check again.'**
  String get licenseErrorInvalid;

  /// No description provided for @licenseSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'License verified!'**
  String get licenseSuccessTitle;

  /// No description provided for @licenseButtonBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get licenseButtonBack;

  /// No description provided for @aboutDescription.
  ///
  /// In en, this message translates to:
  /// **'A simple tool to convert Excel files to VCF contacts and back.'**
  String get aboutDescription;

  /// No description provided for @aboutClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get aboutClose;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeDark;

  /// No description provided for @settingsThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeLight;

  /// No description provided for @settingsThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsThemeSystem;

  /// No description provided for @settingsDefaultFileName.
  ///
  /// In en, this message translates to:
  /// **'Default file name'**
  String get settingsDefaultFileName;

  /// No description provided for @settingsDefaultFileNameHint.
  ///
  /// In en, this message translates to:
  /// **'Kontaktlar'**
  String get settingsDefaultFileNameHint;

  /// No description provided for @settingsVcfVersion.
  ///
  /// In en, this message translates to:
  /// **'VCF version'**
  String get settingsVcfVersion;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsLanguageSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsLanguageSystem;

  /// No description provided for @settingsVcfVersion3.
  ///
  /// In en, this message translates to:
  /// **'3.0'**
  String get settingsVcfVersion3;

  /// No description provided for @settingsVcfVersion4.
  ///
  /// In en, this message translates to:
  /// **'4.0'**
  String get settingsVcfVersion4;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'az',
    'bn',
    'de',
    'en',
    'es',
    'fa',
    'fr',
    'ha',
    'he',
    'hi',
    'hy',
    'id',
    'it',
    'ja',
    'jv',
    'ka',
    'ko',
    'mr',
    'ms',
    'nl',
    'pa',
    'pt',
    'ro',
    'ru',
    'sw',
    'ta',
    'te',
    'th',
    'tl',
    'tr',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'ha':
      return AppLocalizationsHa();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'jv':
      return AppLocalizationsJv();
    case 'ka':
      return AppLocalizationsKa();
    case 'ko':
      return AppLocalizationsKo();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'pa':
      return AppLocalizationsPa();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tl':
      return AppLocalizationsTl();
    case 'tr':
      return AppLocalizationsTr();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
