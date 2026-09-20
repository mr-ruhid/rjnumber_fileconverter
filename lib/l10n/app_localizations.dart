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

  /// The application title shown in the window bar
  ///
  /// In en, this message translates to:
  /// **'RJ Number - File Converter'**
  String get appTitle;

  /// Text shown on splash screen while loading
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get splashLoading;

  /// Main heading on the converter page
  ///
  /// In en, this message translates to:
  /// **'Convert your Excel file to Contacts (VCF)'**
  String get converterTitle;

  /// Initial status message on the converter page
  ///
  /// In en, this message translates to:
  /// **'Select an Excel (.xlsx) file to start'**
  String get converterInitialStatus;

  /// Status shown while the file is being processed
  ///
  /// In en, this message translates to:
  /// **'Reading and converting file...'**
  String get converterReadingStatus;

  /// Button text to pick an Excel file
  ///
  /// In en, this message translates to:
  /// **'Select Excel File'**
  String get converterSelectButton;

  /// Button text while processing
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get converterPleaseWait;

  /// Status when user cancels file selection
  ///
  /// In en, this message translates to:
  /// **'File selection cancelled.'**
  String get converterFileCancelled;

  /// Error shown when file picker fails to open
  ///
  /// In en, this message translates to:
  /// **'Error opening file picker: {error}'**
  String converterFilePickerError(String error);

  /// Error when Excel file has no sheets
  ///
  /// In en, this message translates to:
  /// **'Error: No sheet found in the Excel file.'**
  String get converterEmptyExcelError;

  /// Error when no valid contacts were found in the file
  ///
  /// In en, this message translates to:
  /// **'Error: No valid phone number found or format is incorrect.'**
  String get converterNoContactsError;

  /// Success message after saving the VCF file
  ///
  /// In en, this message translates to:
  /// **'Done! File saved successfully.\n\nFile path: {path}'**
  String converterSaveSuccess(String path);

  /// Status when user cancels the save dialog
  ///
  /// In en, this message translates to:
  /// **'Saving was cancelled.'**
  String get converterSaveCancelled;

  /// Error shown when save file dialog fails
  ///
  /// In en, this message translates to:
  /// **'Error in save dialog: {error}'**
  String converterSaveError(String error);

  /// Generic error message
  ///
  /// In en, this message translates to:
  /// **'An error occurred: {error}'**
  String converterGenericError(String error);

  /// Title on the loading overlay
  ///
  /// In en, this message translates to:
  /// **'Converting file...'**
  String get converterProcessingTitle;

  /// Subtitle on the loading overlay
  ///
  /// In en, this message translates to:
  /// **'Please wait, the process is running.'**
  String get converterProcessingSubtitle;

  /// Badge shown when license is active
  ///
  /// In en, this message translates to:
  /// **'License Active'**
  String get licenseBadgeActive;

  /// Badge shown when using trial version
  ///
  /// In en, this message translates to:
  /// **'Trial Version'**
  String get licenseBadgeTrial;

  /// Title of the trial limit dialog
  ///
  /// In en, this message translates to:
  /// **'Trial Limit Reached'**
  String get licenseDialogTitle;

  /// Content of the trial limit dialog
  ///
  /// In en, this message translates to:
  /// **'You have already used your one-time free trial. To continue, please enter your license code.'**
  String get licenseDialogContent;

  /// Close button on the trial limit dialog
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get licenseDialogClose;

  /// Button to go to license entry screen
  ///
  /// In en, this message translates to:
  /// **'Enter License'**
  String get licenseDialogEnter;

  /// Title on license entry screen
  ///
  /// In en, this message translates to:
  /// **'Enter your license code to continue'**
  String get licenseScreenTitle;

  /// Hint text in license code field
  ///
  /// In en, this message translates to:
  /// **'License code'**
  String get licenseFieldHint;

  /// Verify button on license screen
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get licenseButtonVerify;

  /// Error when license field is empty
  ///
  /// In en, this message translates to:
  /// **'Please enter your license code.'**
  String get licenseErrorEmpty;

  /// Error when license code is invalid
  ///
  /// In en, this message translates to:
  /// **'Invalid license code. Please check again.'**
  String get licenseErrorInvalid;

  /// Success message after license verification
  ///
  /// In en, this message translates to:
  /// **'License verified!'**
  String get licenseSuccessTitle;

  /// Back button on license success screen
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get licenseButtonBack;

  /// Author name in the footer
  ///
  /// In en, this message translates to:
  /// **'Ruhid Javadov - Mr-Ruhid'**
  String get footerAuthor;

  /// Version badge in the footer
  ///
  /// In en, this message translates to:
  /// **'Lite version'**
  String get footerVersion;
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
