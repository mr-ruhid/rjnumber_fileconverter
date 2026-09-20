// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'Loading...';

  @override
  String get converterTitle => 'Convert your Excel file to Contacts (VCF)';

  @override
  String get converterInitialStatus => 'Select an Excel (.xlsx) file to start';

  @override
  String get converterReadingStatus => 'Reading and converting file...';

  @override
  String get converterSelectButton => 'Select Excel File';

  @override
  String get converterPleaseWait => 'Please wait...';

  @override
  String get converterFileCancelled => 'File selection cancelled.';

  @override
  String converterFilePickerError(String error) {
    return 'Error opening file picker: $error';
  }

  @override
  String get converterEmptyExcelError =>
      'Error: No sheet found in the Excel file.';

  @override
  String get converterNoContactsError =>
      'Error: No valid phone number found or format is incorrect.';

  @override
  String converterSaveSuccess(String path) {
    return 'Done! File saved successfully.\n\nFile path: $path';
  }

  @override
  String get converterSaveCancelled => 'Saving was cancelled.';

  @override
  String converterSaveError(String error) {
    return 'Error in save dialog: $error';
  }

  @override
  String converterGenericError(String error) {
    return 'An error occurred: $error';
  }

  @override
  String get converterProcessingTitle => 'Converting file...';

  @override
  String get converterProcessingSubtitle =>
      'Please wait, the process is running.';

  @override
  String get licenseBadgeActive => 'License Active';

  @override
  String get licenseBadgeTrial => 'Trial Version';

  @override
  String get licenseDialogTitle => 'Trial Limit Reached';

  @override
  String get licenseDialogContent =>
      'You have already used your one-time free trial. To continue, please enter your license code.';

  @override
  String get licenseDialogClose => 'Close';

  @override
  String get licenseDialogEnter => 'Enter License';

  @override
  String get licenseScreenTitle => 'Enter your license code to continue';

  @override
  String get licenseFieldHint => 'License code';

  @override
  String get licenseButtonVerify => 'Verify';

  @override
  String get licenseErrorEmpty => 'Please enter your license code.';

  @override
  String get licenseErrorInvalid => 'Invalid license code. Please check again.';

  @override
  String get licenseSuccessTitle => 'License verified!';

  @override
  String get licenseButtonBack => 'Go back';

  @override
  String get footerAuthor => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get footerVersion => 'Lite version';
}
