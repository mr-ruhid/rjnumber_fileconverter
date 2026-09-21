// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Convertitore di file';

  @override
  String get splashLoading => 'Caricamento...';

  @override
  String get homeTitle => 'Scegli un\'azione';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Converti file Excel in contatti';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Converti contatti in file Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Versione Lite';

  @override
  String get vcfToExcelTitle => 'Converti VCF in Excel';

  @override
  String get vcfToExcelStatusInitial =>
      'Seleziona un file VCF (.vcf) per iniziare';

  @override
  String get vcfToExcelStatusSuccess => 'Fatto! File salvato con successo.';

  @override
  String get vcfToExcelStatusCancelled => 'Selezione file annullata.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Salvataggio annullato.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Errore: Nessun contatto valido trovato nel file.';

  @override
  String get vcfToExcelStatusError =>
      'Si è verificato un errore durante la conversione.';

  @override
  String get vcfToExcelButton => 'Seleziona file VCF';

  @override
  String get vcfToExcelPleaseWait => 'Attendere prego...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Salva file Excel';

  @override
  String get excelToVcfTitle => 'Converti Excel in VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Seleziona un file Excel (.xlsx) per iniziare';

  @override
  String get excelToVcfStatusSuccess => 'Fatto! File salvato con successo.';

  @override
  String get excelToVcfStatusCancelled => 'Selezione file annullata.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Salvataggio annullato.';

  @override
  String get excelToVcfStatusEmpty =>
      'Errore: Nessun contatto valido trovato nel file.';

  @override
  String get excelToVcfStatusError =>
      'Si è verificato un errore durante la conversione.';

  @override
  String get excelToVcfButton => 'Seleziona file Excel';

  @override
  String get excelToVcfPleaseWait => 'Attendere prego...';

  @override
  String get excelToVcfSaveDialogTitle => 'Salva file VCF';

  @override
  String get processingTitle => 'Conversione file...';

  @override
  String get processingSubtitle =>
      'Attendere prego, il processo è in esecuzione.';

  @override
  String get licenseBadgeActive => 'Licenza attiva';

  @override
  String get licenseBadgeTrial => 'Versione di prova';

  @override
  String get licenseDialogTitle => 'Limite di prova raggiunto';

  @override
  String get licenseDialogContent =>
      'Hai già utilizzato la tua prova gratuita una tantum. Per continuare, inserisci il tuo codice di licenza.';

  @override
  String get licenseDialogClose => 'Chiudi';

  @override
  String get licenseDialogEnter => 'Inserisci licenza';

  @override
  String get licenseScreenTitle =>
      'Inserisci il tuo codice di licenza per continuare';

  @override
  String get licenseFieldHint => 'Codice di licenza';

  @override
  String get licenseButtonVerify => 'Verifica';

  @override
  String get licenseErrorEmpty => 'Inserisci il tuo codice di licenza.';

  @override
  String get licenseErrorInvalid =>
      'Codice di licenza non valido. Controlla di nuovo.';

  @override
  String get licenseSuccessTitle => 'Licenza verificata!';

  @override
  String get licenseButtonBack => 'Indietro';

  @override
  String get aboutDescription =>
      'Uno strumento semplice per convertire file Excel in contatti VCF e viceversa.';

  @override
  String get aboutClose => 'Chiudi';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Scuro';

  @override
  String get settingsThemeLight => 'Chiaro';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsDefaultFileName => 'Nome file predefinito';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'Versione VCF';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get settingsLanguageSystem => 'Sistema';

  @override
  String get aboutDownloadTemplate => 'Scarica modello Excel';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
