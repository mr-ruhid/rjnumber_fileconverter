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
  String get homeTitle => 'Choose an action';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Convert Excel file to contacts';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Convert contacts to Excel file';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite version';

  @override
  String get vcfToExcelTitle => 'Convert VCF to Excel';

  @override
  String get vcfToExcelStatusInitial => 'Select a VCF (.vcf) file to start';

  @override
  String get vcfToExcelStatusSuccess => 'Done! File saved successfully.';

  @override
  String get vcfToExcelStatusCancelled => 'File selection cancelled.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Saving was cancelled.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Error: No valid contacts found in the file.';

  @override
  String get vcfToExcelStatusError => 'An error occurred during conversion.';

  @override
  String get vcfToExcelButton => 'Select VCF File';

  @override
  String get vcfToExcelPleaseWait => 'Please wait...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Save Excel file';

  @override
  String get excelToVcfTitle => 'Convert Excel to VCF';

  @override
  String get excelToVcfStatusInitial => 'Select an Excel (.xlsx) file to start';

  @override
  String get excelToVcfStatusSuccess => 'Done! File saved successfully.';

  @override
  String get excelToVcfStatusCancelled => 'File selection cancelled.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Saving was cancelled.';

  @override
  String get excelToVcfStatusEmpty =>
      'Error: No valid contacts found in the file.';

  @override
  String get excelToVcfStatusError => 'An error occurred during conversion.';

  @override
  String get excelToVcfButton => 'Select Excel File';

  @override
  String get excelToVcfPleaseWait => 'Please wait...';

  @override
  String get excelToVcfSaveDialogTitle => 'Save VCF file';

  @override
  String get processingTitle => 'Converting file...';

  @override
  String get processingSubtitle => 'Please wait, the process is running.';

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
  String get aboutDescription =>
      'A simple tool to convert Excel files to VCF contacts and back.';

  @override
  String get aboutClose => 'Close';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeDark => 'Dark';

  @override
  String get settingsThemeLight => 'Light';

  @override
  String get settingsThemeSystem => 'System';
}
