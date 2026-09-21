// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Bestandsconverter';

  @override
  String get splashLoading => 'Laden...';

  @override
  String get homeTitle => 'Kies een actie';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel-bestand converteren naar contacten';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Contacten converteren naar Excel-bestand';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite-versie';

  @override
  String get vcfToExcelTitle => 'VCF converteren naar Excel';

  @override
  String get vcfToExcelStatusInitial =>
      'Selecteer een VCF-bestand (.vcf) om te beginnen';

  @override
  String get vcfToExcelStatusSuccess => 'Klaar! Bestand succesvol opgeslagen.';

  @override
  String get vcfToExcelStatusCancelled => 'Bestandsselectie geannuleerd.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Opslaan geannuleerd.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Fout: Geen geldige contacten gevonden in het bestand.';

  @override
  String get vcfToExcelStatusError =>
      'Er is een fout opgetreden tijdens de conversie.';

  @override
  String get vcfToExcelButton => 'VCF-bestand selecteren';

  @override
  String get vcfToExcelPleaseWait => 'Even geduld...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Excel-bestand opslaan';

  @override
  String get excelToVcfTitle => 'Excel converteren naar VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Selecteer een Excel-bestand (.xlsx) om te beginnen';

  @override
  String get excelToVcfStatusSuccess => 'Klaar! Bestand succesvol opgeslagen.';

  @override
  String get excelToVcfStatusCancelled => 'Bestandsselectie geannuleerd.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Opslaan geannuleerd.';

  @override
  String get excelToVcfStatusEmpty =>
      'Fout: Geen geldige contacten gevonden in het bestand.';

  @override
  String get excelToVcfStatusError =>
      'Er is een fout opgetreden tijdens de conversie.';

  @override
  String get excelToVcfButton => 'Excel-bestand selecteren';

  @override
  String get excelToVcfPleaseWait => 'Even geduld...';

  @override
  String get excelToVcfSaveDialogTitle => 'VCF-bestand opslaan';

  @override
  String get processingTitle => 'Bestand converteren...';

  @override
  String get processingSubtitle => 'Even geduld, het proces is bezig.';

  @override
  String get licenseBadgeActive => 'Licentie actief';

  @override
  String get licenseBadgeTrial => 'Proefversie';

  @override
  String get licenseDialogTitle => 'Proeflimiet bereikt';

  @override
  String get licenseDialogContent =>
      'U heeft uw eenmalige gratis proefversie al gebruikt. Voer uw licentiecode in om door te gaan.';

  @override
  String get licenseDialogClose => 'Sluiten';

  @override
  String get licenseDialogEnter => 'Licentie invoeren';

  @override
  String get licenseScreenTitle => 'Voer uw licentiecode in om door te gaan';

  @override
  String get licenseFieldHint => 'Licentiecode';

  @override
  String get licenseButtonVerify => 'Verifiëren';

  @override
  String get licenseErrorEmpty => 'Voer uw licentiecode in.';

  @override
  String get licenseErrorInvalid =>
      'Ongeldige licentiecode. Controleer opnieuw.';

  @override
  String get licenseSuccessTitle => 'Licentie geverifieerd!';

  @override
  String get licenseButtonBack => 'Terug';

  @override
  String get aboutDescription =>
      'Een eenvoudige tool om Excel-bestanden naar VCF-contacten te converteren en terug.';

  @override
  String get aboutClose => 'Sluiten';

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get settingsTheme => 'Thema';

  @override
  String get settingsThemeDark => 'Donker';

  @override
  String get settingsThemeLight => 'Licht';

  @override
  String get settingsThemeSystem => 'Systeem';

  @override
  String get settingsDefaultFileName => 'Standaard bestandsnaam';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'VCF-versie';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
