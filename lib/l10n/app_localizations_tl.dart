// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'Naglo-load...';

  @override
  String get homeTitle => 'Pumili ng aksyon';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'I-convert ang Excel file sa mga contact';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'I-convert ang mga contact sa Excel file';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite na bersyon';

  @override
  String get vcfToExcelTitle => 'I-convert ang VCF sa Excel';

  @override
  String get vcfToExcelStatusInitial =>
      'Pumili ng VCF (.vcf) file upang magsimula';

  @override
  String get vcfToExcelStatusSuccess =>
      'Tapos na! Matagumpay na na-save ang file.';

  @override
  String get vcfToExcelStatusCancelled => 'Kinansela ang pagpili ng file.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Kinansela ang pag-save.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Error: Walang valid na contact na natagpuan sa file.';

  @override
  String get vcfToExcelStatusError =>
      'May error na naganap habang nagko-convert.';

  @override
  String get vcfToExcelButton => 'Pumili ng VCF File';

  @override
  String get vcfToExcelPleaseWait => 'Mangyaring maghintay...';

  @override
  String get vcfToExcelSaveDialogTitle => 'I-save ang Excel file';

  @override
  String get excelToVcfTitle => 'I-convert ang Excel sa VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Pumili ng Excel (.xlsx) file upang magsimula';

  @override
  String get excelToVcfStatusSuccess =>
      'Tapos na! Matagumpay na na-save ang file.';

  @override
  String get excelToVcfStatusCancelled => 'Kinansela ang pagpili ng file.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Kinansela ang pag-save.';

  @override
  String get excelToVcfStatusEmpty =>
      'Error: Walang valid na contact na natagpuan sa file.';

  @override
  String get excelToVcfStatusError =>
      'May error na naganap habang nagko-convert.';

  @override
  String get excelToVcfButton => 'Pumili ng Excel File';

  @override
  String get excelToVcfPleaseWait => 'Mangyaring maghintay...';

  @override
  String get excelToVcfSaveDialogTitle => 'I-save ang VCF file';

  @override
  String get processingTitle => 'Nagko-convert ng file...';

  @override
  String get processingSubtitle =>
      'Mangyaring maghintay, tumatakbo ang proseso.';

  @override
  String get licenseBadgeActive => 'Aktibo ang Lisensya';

  @override
  String get licenseBadgeTrial => 'Bersyong Trial';

  @override
  String get licenseDialogTitle => 'Naabot na ang Limitasyon ng Trial';

  @override
  String get licenseDialogContent =>
      'Nagamit mo na ang iyong isang beses na libreng trial. Upang magpatuloy, mangyaring ilagay ang iyong license code.';

  @override
  String get licenseDialogClose => 'Isara';

  @override
  String get licenseDialogEnter => 'Ilagay ang Lisensya';

  @override
  String get licenseScreenTitle =>
      'Ilagay ang iyong license code upang magpatuloy';

  @override
  String get licenseFieldHint => 'License code';

  @override
  String get licenseButtonVerify => 'I-verify';

  @override
  String get licenseErrorEmpty => 'Mangyaring ilagay ang iyong license code.';

  @override
  String get licenseErrorInvalid =>
      'Hindi valid ang license code. Mangyaring suriin muli.';

  @override
  String get licenseSuccessTitle => 'Na-verify ang lisensya!';

  @override
  String get licenseButtonBack => 'Bumalik';

  @override
  String get aboutDescription =>
      'Isang simpleng tool upang i-convert ang mga Excel file sa VCF contacts at pabalik.';

  @override
  String get aboutClose => 'Isara';

  @override
  String get settingsTitle => 'Mga Setting';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Madilim';

  @override
  String get settingsThemeLight => 'Maliwanag';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsDefaultFileName => 'Default na pangalan ng file';

  @override
  String get settingsDefaultFileNameHint => 'Mga Contact';

  @override
  String get settingsVcfVersion => 'Bersyon ng VCF';

  @override
  String get settingsLanguage => 'Wika';

  @override
  String get settingsLanguageSystem => 'System';

  @override
  String get aboutDownloadTemplate => 'I-download ang Excel Template';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
