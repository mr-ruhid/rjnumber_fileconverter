// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Convertidor de Archivos';

  @override
  String get splashLoading => 'Cargando...';

  @override
  String get homeTitle => 'Elige una acción';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Convertir archivo Excel en contactos';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Convertir contactos en archivo Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Versión Lite';

  @override
  String get vcfToExcelTitle => 'Convertir VCF a Excel';

  @override
  String get vcfToExcelStatusInitial =>
      'Selecciona un archivo VCF (.vcf) para comenzar';

  @override
  String get vcfToExcelStatusSuccess =>
      '¡Listo! Archivo guardado correctamente.';

  @override
  String get vcfToExcelStatusCancelled => 'Selección de archivo cancelada.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Guardado cancelado.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Error: No se encontraron contactos válidos en el archivo.';

  @override
  String get vcfToExcelStatusError => 'Ocurrió un error durante la conversión.';

  @override
  String get vcfToExcelButton => 'Seleccionar Archivo VCF';

  @override
  String get vcfToExcelPleaseWait => 'Por favor espera...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Guardar archivo Excel';

  @override
  String get excelToVcfTitle => 'Convertir Excel a VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Selecciona un archivo Excel (.xlsx) para comenzar';

  @override
  String get excelToVcfStatusSuccess =>
      '¡Listo! Archivo guardado correctamente.';

  @override
  String get excelToVcfStatusCancelled => 'Selección de archivo cancelada.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Guardado cancelado.';

  @override
  String get excelToVcfStatusEmpty =>
      'Error: No se encontraron contactos válidos en el archivo.';

  @override
  String get excelToVcfStatusError => 'Ocurrió un error durante la conversión.';

  @override
  String get excelToVcfButton => 'Seleccionar Archivo Excel';

  @override
  String get excelToVcfPleaseWait => 'Por favor espera...';

  @override
  String get excelToVcfSaveDialogTitle => 'Guardar archivo VCF';

  @override
  String get processingTitle => 'Convirtiendo archivo...';

  @override
  String get processingSubtitle =>
      'Por favor espera, el proceso está en ejecución.';

  @override
  String get licenseBadgeActive => 'Licencia Activa';

  @override
  String get licenseBadgeTrial => 'Versión de Prueba';

  @override
  String get licenseDialogTitle => 'Límite de Prueba Alcanzado';

  @override
  String get licenseDialogContent =>
      'Ya has usado tu prueba gratuita única. Para continuar, introduce el código de licencia.';

  @override
  String get licenseDialogClose => 'Cerrar';

  @override
  String get licenseDialogEnter => 'Introducir Licencia';

  @override
  String get licenseScreenTitle =>
      'Introduce el código de licencia para continuar';

  @override
  String get licenseFieldHint => 'Código de licencia';

  @override
  String get licenseButtonVerify => 'Verificar';

  @override
  String get licenseErrorEmpty => 'Por favor, introduce el código de licencia.';

  @override
  String get licenseErrorInvalid =>
      'Código de licencia inválido. Vuelve a comprobar.';

  @override
  String get licenseSuccessTitle => '¡Licencia verificada!';

  @override
  String get licenseButtonBack => 'Volver';

  @override
  String get aboutDescription =>
      'Una herramienta simple para convertir archivos Excel en contactos VCF y viceversa.';

  @override
  String get aboutClose => 'Cerrar';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Oscuro';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsDefaultFileName => 'Nombre de archivo predeterminado';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'Versión VCF';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageSystem => 'Sistema';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
