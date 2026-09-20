import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

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
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

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
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
