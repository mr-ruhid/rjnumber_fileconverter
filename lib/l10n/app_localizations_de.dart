// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Dateikonverter';

  @override
  String get splashLoading => 'Wird geladen...';

  @override
  String get homeTitle => 'Wählen Sie eine Aktion';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel-Datei in Kontakte umwandeln';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Kontakte in Excel-Datei umwandeln';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite-Version';

  @override
  String get vcfToExcelTitle => 'VCF in Excel umwandeln';

  @override
  String get vcfToExcelStatusInitial =>
      'Wählen Sie eine VCF-Datei (.vcf) zum Starten';

  @override
  String get vcfToExcelStatusSuccess =>
      'Fertig! Datei erfolgreich gespeichert.';

  @override
  String get vcfToExcelStatusCancelled => 'Dateiauswahl abgebrochen.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Speichern abgebrochen.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Fehler: Keine gültigen Kontakte in der Datei gefunden.';

  @override
  String get vcfToExcelStatusError =>
      'Bei der Konvertierung ist ein Fehler aufgetreten.';

  @override
  String get vcfToExcelButton => 'VCF-Datei auswählen';

  @override
  String get vcfToExcelPleaseWait => 'Bitte warten...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Excel-Datei speichern';

  @override
  String get excelToVcfTitle => 'Excel in VCF umwandeln';

  @override
  String get excelToVcfStatusInitial =>
      'Wählen Sie eine Excel-Datei (.xlsx) zum Starten';

  @override
  String get excelToVcfStatusSuccess =>
      'Fertig! Datei erfolgreich gespeichert.';

  @override
  String get excelToVcfStatusCancelled => 'Dateiauswahl abgebrochen.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Speichern abgebrochen.';

  @override
  String get excelToVcfStatusEmpty =>
      'Fehler: Keine gültigen Kontakte in der Datei gefunden.';

  @override
  String get excelToVcfStatusError =>
      'Bei der Konvertierung ist ein Fehler aufgetreten.';

  @override
  String get excelToVcfButton => 'Excel-Datei auswählen';

  @override
  String get excelToVcfPleaseWait => 'Bitte warten...';

  @override
  String get excelToVcfSaveDialogTitle => 'VCF-Datei speichern';

  @override
  String get processingTitle => 'Datei wird konvertiert...';

  @override
  String get processingSubtitle => 'Bitte warten, der Vorgang läuft.';

  @override
  String get licenseBadgeActive => 'Lizenz aktiv';

  @override
  String get licenseBadgeTrial => 'Testversion';

  @override
  String get licenseDialogTitle => 'Testlimit erreicht';

  @override
  String get licenseDialogContent =>
      'Sie haben Ihre einmalige kostenlose Testversion bereits verwendet. Um fortzufahren, geben Sie bitte Ihren Lizenzcode ein.';

  @override
  String get licenseDialogClose => 'Schließen';

  @override
  String get licenseDialogEnter => 'Lizenz eingeben';

  @override
  String get licenseScreenTitle =>
      'Geben Sie Ihren Lizenzcode ein, um fortzufahren';

  @override
  String get licenseFieldHint => 'Lizenzcode';

  @override
  String get licenseButtonVerify => 'Überprüfen';

  @override
  String get licenseErrorEmpty => 'Bitte geben Sie Ihren Lizenzcode ein.';

  @override
  String get licenseErrorInvalid =>
      'Ungültiger Lizenzcode. Bitte überprüfen Sie erneut.';

  @override
  String get licenseSuccessTitle => 'Lizenz bestätigt!';

  @override
  String get licenseButtonBack => 'Zurück';

  @override
  String get aboutDescription =>
      'Ein einfaches Tool zum Konvertieren von Excel-Dateien in VCF-Kontakte und zurück.';

  @override
  String get aboutClose => 'Schließen';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get settingsTheme => 'Design';

  @override
  String get settingsThemeDark => 'Dunkel';

  @override
  String get settingsThemeLight => 'Hell';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsDefaultFileName => 'Standard-Dateiname';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'VCF-Version';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get settingsLanguageSystem => 'System';

  @override
  String get aboutDownloadTemplate => 'Excel-Vorlage herunterladen';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
