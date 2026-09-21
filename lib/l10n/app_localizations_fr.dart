// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Convertisseur de fichiers';

  @override
  String get splashLoading => 'Chargement...';

  @override
  String get homeTitle => 'Choisissez une action';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Convertir un fichier Excel en contacts';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Convertir des contacts en fichier Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Version Lite';

  @override
  String get vcfToExcelTitle => 'Convertir VCF en Excel';

  @override
  String get vcfToExcelStatusInitial =>
      'Sélectionnez un fichier VCF (.vcf) pour commencer';

  @override
  String get vcfToExcelStatusSuccess =>
      'Terminé ! Fichier enregistré avec succès.';

  @override
  String get vcfToExcelStatusCancelled => 'Sélection de fichier annulée.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Enregistrement annulé.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Erreur : Aucun contact valide trouvé dans le fichier.';

  @override
  String get vcfToExcelStatusError =>
      'Une erreur s\'est produite lors de la conversion.';

  @override
  String get vcfToExcelButton => 'Sélectionner un fichier VCF';

  @override
  String get vcfToExcelPleaseWait => 'Veuillez patienter...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Enregistrer le fichier Excel';

  @override
  String get excelToVcfTitle => 'Convertir Excel en VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Sélectionnez un fichier Excel (.xlsx) pour commencer';

  @override
  String get excelToVcfStatusSuccess =>
      'Terminé ! Fichier enregistré avec succès.';

  @override
  String get excelToVcfStatusCancelled => 'Sélection de fichier annulée.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Enregistrement annulé.';

  @override
  String get excelToVcfStatusEmpty =>
      'Erreur : Aucun contact valide trouvé dans le fichier.';

  @override
  String get excelToVcfStatusError =>
      'Une erreur s\'est produite lors de la conversion.';

  @override
  String get excelToVcfButton => 'Sélectionner un fichier Excel';

  @override
  String get excelToVcfPleaseWait => 'Veuillez patienter...';

  @override
  String get excelToVcfSaveDialogTitle => 'Enregistrer le fichier VCF';

  @override
  String get processingTitle => 'Conversion du fichier...';

  @override
  String get processingSubtitle =>
      'Veuillez patienter, le processus est en cours.';

  @override
  String get licenseBadgeActive => 'Licence active';

  @override
  String get licenseBadgeTrial => 'Version d\'essai';

  @override
  String get licenseDialogTitle => 'Limite d\'essai atteinte';

  @override
  String get licenseDialogContent =>
      'Vous avez déjà utilisé votre essai gratuit unique. Pour continuer, veuillez saisir votre code de licence.';

  @override
  String get licenseDialogClose => 'Fermer';

  @override
  String get licenseDialogEnter => 'Saisir la licence';

  @override
  String get licenseScreenTitle =>
      'Saisissez votre code de licence pour continuer';

  @override
  String get licenseFieldHint => 'Code de licence';

  @override
  String get licenseButtonVerify => 'Vérifier';

  @override
  String get licenseErrorEmpty => 'Veuillez saisir votre code de licence.';

  @override
  String get licenseErrorInvalid =>
      'Code de licence invalide. Veuillez vérifier à nouveau.';

  @override
  String get licenseSuccessTitle => 'Licence vérifiée !';

  @override
  String get licenseButtonBack => 'Retour';

  @override
  String get aboutDescription =>
      'Un outil simple pour convertir des fichiers Excel en contacts VCF et inversement.';

  @override
  String get aboutClose => 'Fermer';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get settingsTheme => 'Thème';

  @override
  String get settingsThemeDark => 'Sombre';

  @override
  String get settingsThemeLight => 'Clair';

  @override
  String get settingsThemeSystem => 'Système';

  @override
  String get settingsDefaultFileName => 'Nom de fichier par défaut';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'Version VCF';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
