// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Конвертер файлов';

  @override
  String get splashLoading => 'Загрузка...';

  @override
  String get homeTitle => 'Выберите действие';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Преобразовать Excel в контакты';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Преобразовать контакты в Excel';

  @override
  String get homeFooter => 'Рухид Джавадов - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite версия';

  @override
  String get vcfToExcelTitle => 'Преобразовать VCF в Excel';

  @override
  String get vcfToExcelStatusInitial => 'Выберите файл VCF (.vcf) для начала';

  @override
  String get vcfToExcelStatusSuccess => 'Готово! Файл успешно сохранён.';

  @override
  String get vcfToExcelStatusCancelled => 'Выбор файла отменён.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Сохранение отменено.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Ошибка: В файле не найдено действительных контактов.';

  @override
  String get vcfToExcelStatusError => 'Произошла ошибка при преобразовании.';

  @override
  String get vcfToExcelButton => 'Выбрать файл VCF';

  @override
  String get vcfToExcelPleaseWait => 'Подождите...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Сохранить файл Excel';

  @override
  String get excelToVcfTitle => 'Преобразовать Excel в VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Выберите файл Excel (.xlsx) для начала';

  @override
  String get excelToVcfStatusSuccess => 'Готово! Файл успешно сохранён.';

  @override
  String get excelToVcfStatusCancelled => 'Выбор файла отменён.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Сохранение отменено.';

  @override
  String get excelToVcfStatusEmpty =>
      'Ошибка: В файле не найдено действительных контактов.';

  @override
  String get excelToVcfStatusError => 'Произошла ошибка при преобразовании.';

  @override
  String get excelToVcfButton => 'Выбрать файл Excel';

  @override
  String get excelToVcfPleaseWait => 'Подождите...';

  @override
  String get excelToVcfSaveDialogTitle => 'Сохранить файл VCF';

  @override
  String get processingTitle => 'Преобразование файла...';

  @override
  String get processingSubtitle => 'Подождите, процесс выполняется.';

  @override
  String get licenseBadgeActive => 'Лицензия активна';

  @override
  String get licenseBadgeTrial => 'Пробная версия';

  @override
  String get licenseDialogTitle => 'Лимит пробной версии исчерпан';

  @override
  String get licenseDialogContent =>
      'Вы уже использовали свою однократную бесплатную пробную версию. Чтобы продолжить, введите код лицензии.';

  @override
  String get licenseDialogClose => 'Закрыть';

  @override
  String get licenseDialogEnter => 'Ввести лицензию';

  @override
  String get licenseScreenTitle => 'Введите код лицензии для продолжения';

  @override
  String get licenseFieldHint => 'Код лицензии';

  @override
  String get licenseButtonVerify => 'Проверить';

  @override
  String get licenseErrorEmpty => 'Пожалуйста, введите код лицензии.';

  @override
  String get licenseErrorInvalid => 'Неверный код лицензии. Проверьте ещё раз.';

  @override
  String get licenseSuccessTitle => 'Лицензия подтверждена!';

  @override
  String get licenseButtonBack => 'Вернуться';

  @override
  String get aboutDescription =>
      'Простой инструмент для преобразования файлов Excel в контакты VCF и обратно.';

  @override
  String get aboutClose => 'Закрыть';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeDark => 'Тёмная';

  @override
  String get settingsThemeLight => 'Светлая';

  @override
  String get settingsThemeSystem => 'Системная';

  @override
  String get settingsDefaultFileName => 'Имя файла по умолчанию';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'Версия VCF';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get settingsLanguageSystem => 'Система';

  @override
  String get aboutDownloadTemplate => 'Скачать шаблон Excel';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
