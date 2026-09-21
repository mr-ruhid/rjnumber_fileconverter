// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Convertor de fișiere';

  @override
  String get splashLoading => 'Se încarcă...';

  @override
  String get homeTitle => 'Alegeți o acțiune';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Convertiți fișierul Excel în contacte';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Convertiți contactele în fișier Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Versiune Lite';

  @override
  String get vcfToExcelTitle => 'Convertiți VCF în Excel';

  @override
  String get vcfToExcelStatusInitial =>
      'Selectați un fișier VCF (.vcf) pentru a începe';

  @override
  String get vcfToExcelStatusSuccess =>
      'Gata! Fișierul a fost salvat cu succes.';

  @override
  String get vcfToExcelStatusCancelled =>
      'Selectarea fișierului a fost anulată.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Salvarea a fost anulată.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Eroare: Nu s-au găsit contacte valide în fișier.';

  @override
  String get vcfToExcelStatusError => 'A apărut o eroare în timpul conversiei.';

  @override
  String get vcfToExcelButton => 'Selectați fișierul VCF';

  @override
  String get vcfToExcelPleaseWait => 'Vă rugăm așteptați...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Salvați fișierul Excel';

  @override
  String get excelToVcfTitle => 'Convertiți Excel în VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Selectați un fișier Excel (.xlsx) pentru a începe';

  @override
  String get excelToVcfStatusSuccess =>
      'Gata! Fișierul a fost salvat cu succes.';

  @override
  String get excelToVcfStatusCancelled =>
      'Selectarea fișierului a fost anulată.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Salvarea a fost anulată.';

  @override
  String get excelToVcfStatusEmpty =>
      'Eroare: Nu s-au găsit contacte valide în fișier.';

  @override
  String get excelToVcfStatusError => 'A apărut o eroare în timpul conversiei.';

  @override
  String get excelToVcfButton => 'Selectați fișierul Excel';

  @override
  String get excelToVcfPleaseWait => 'Vă rugăm așteptați...';

  @override
  String get excelToVcfSaveDialogTitle => 'Salvați fișierul VCF';

  @override
  String get processingTitle => 'Se convertește fișierul...';

  @override
  String get processingSubtitle => 'Vă rugăm așteptați, procesul este în curs.';

  @override
  String get licenseBadgeActive => 'Licență activă';

  @override
  String get licenseBadgeTrial => 'Versiune de probă';

  @override
  String get licenseDialogTitle => 'Limita de probă atinsă';

  @override
  String get licenseDialogContent =>
      'Ați folosit deja proba gratuită unică. Pentru a continua, introduceți codul de licență.';

  @override
  String get licenseDialogClose => 'Închide';

  @override
  String get licenseDialogEnter => 'Introduceți licența';

  @override
  String get licenseScreenTitle =>
      'Introduceți codul de licență pentru a continua';

  @override
  String get licenseFieldHint => 'Cod de licență';

  @override
  String get licenseButtonVerify => 'Verifică';

  @override
  String get licenseErrorEmpty => 'Vă rugăm introduceți codul de licență.';

  @override
  String get licenseErrorInvalid =>
      'Cod de licență invalid. Verificați din nou.';

  @override
  String get licenseSuccessTitle => 'Licență verificată!';

  @override
  String get licenseButtonBack => 'Înapoi';

  @override
  String get aboutDescription =>
      'Un instrument simplu pentru a converti fișierele Excel în contacte VCF și invers.';

  @override
  String get aboutClose => 'Închide';

  @override
  String get settingsTitle => 'Setări';

  @override
  String get settingsTheme => 'Temă';

  @override
  String get settingsThemeDark => 'Întunecat';

  @override
  String get settingsThemeLight => 'Luminos';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsDefaultFileName => 'Nume implicit fișier';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'Versiune VCF';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
