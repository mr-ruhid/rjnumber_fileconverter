// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Ֆայլի փոխարկիչ';

  @override
  String get splashLoading => 'Բեռնվում է...';

  @override
  String get homeTitle => 'Ընտրեք գործողություն';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel ֆայլը փոխարկել կոնտակտների';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Կոնտակտները փոխարկել Excel ֆայլի';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite տարբերակ';

  @override
  String get vcfToExcelTitle => 'VCF-ը փոխարկել Excel-ի';

  @override
  String get vcfToExcelStatusInitial => 'Սկսելու համար ընտրեք VCF (.vcf) ֆայլ';

  @override
  String get vcfToExcelStatusSuccess =>
      'Պատրաստ է։ Ֆայլը հաջողությամբ պահպանվել է։';

  @override
  String get vcfToExcelStatusCancelled => 'Ֆայլի ընտրությունը չեղարկվել է։';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Պահպանումը չեղարկվել է։';

  @override
  String get vcfToExcelStatusEmpty =>
      'Սխալ. Ֆայլում համապատասխան կոնտակտներ չեն գտնվել։';

  @override
  String get vcfToExcelStatusError => 'Փոխարկման ժամանակ սխալ է տեղի ունեցել։';

  @override
  String get vcfToExcelButton => 'Ընտրել VCF ֆայլ';

  @override
  String get vcfToExcelPleaseWait => 'Խնդրում ենք սպասել...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Պահպանել Excel ֆայլը';

  @override
  String get excelToVcfTitle => 'Excel-ը փոխարկել VCF-ի';

  @override
  String get excelToVcfStatusInitial =>
      'Սկսելու համար ընտրեք Excel (.xlsx) ֆայլ';

  @override
  String get excelToVcfStatusSuccess =>
      'Պատրաստ է։ Ֆայլը հաջողությամբ պահպանվել է։';

  @override
  String get excelToVcfStatusCancelled => 'Ֆայլի ընտրությունը չեղարկվել է։';

  @override
  String get excelToVcfStatusSaveCancelled => 'Պահպանումը չեղարկվել է։';

  @override
  String get excelToVcfStatusEmpty =>
      'Սխալ. Ֆայլում համապատասխան կոնտակտներ չեն գտնվել։';

  @override
  String get excelToVcfStatusError => 'Փոխարկման ժամանակ սխալ է տեղի ունեցել։';

  @override
  String get excelToVcfButton => 'Ընտրել Excel ֆայլ';

  @override
  String get excelToVcfPleaseWait => 'Խնդրում ենք սպասել...';

  @override
  String get excelToVcfSaveDialogTitle => 'Պահպանել VCF ֆայլը';

  @override
  String get processingTitle => 'Ֆայլը փոխարկվում է...';

  @override
  String get processingSubtitle =>
      'Խնդրում ենք սպասել, գործընթացը ընթացքի մեջ է։';

  @override
  String get licenseBadgeActive => 'Լիցենզիան ակտիվ է';

  @override
  String get licenseBadgeTrial => 'Փորձնական տարբերակ';

  @override
  String get licenseDialogTitle => 'Փորձնական սահմանաչափը սպառվել է';

  @override
  String get licenseDialogContent =>
      'Դուք արդեն օգտագործել եք ձեր մեկանգամյա անվճար փորձնականը։ Շարունակելու համար մուտքագրեք լիցենզիայի կոդը։';

  @override
  String get licenseDialogClose => 'Փակել';

  @override
  String get licenseDialogEnter => 'Մուտքագրել լիցենզիա';

  @override
  String get licenseScreenTitle =>
      'Շարունակելու համար մուտքագրեք լիցենզիայի կոդը';

  @override
  String get licenseFieldHint => 'Լիցենզիայի կոդ';

  @override
  String get licenseButtonVerify => 'Ստուգել';

  @override
  String get licenseErrorEmpty => 'Խնդրում ենք մուտքագրել լիցենզիայի կոդը։';

  @override
  String get licenseErrorInvalid =>
      'Սխալ լիցենզիայի կոդ։ Խնդրում ենք կրկին ստուգել։';

  @override
  String get licenseSuccessTitle => 'Լիցենզիան հաստատված է։';

  @override
  String get licenseButtonBack => 'Վերադառնալ';

  @override
  String get aboutDescription =>
      'Պարզ գործիք Excel ֆայլերը VCF կոնտակտների փոխարկելու և հակառակը։';

  @override
  String get aboutClose => 'Փակել';

  @override
  String get settingsTitle => 'Կարգավորումներ';

  @override
  String get settingsTheme => 'Թեմա';

  @override
  String get settingsThemeDark => 'Մուգ';

  @override
  String get settingsThemeLight => 'Բաց';

  @override
  String get settingsThemeSystem => 'Համակարգային';

  @override
  String get settingsDefaultFileName => 'Լռելյայն ֆայլի անուն';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'VCF տարբերակ';

  @override
  String get settingsLanguage => 'Լեզու';

  @override
  String get settingsLanguageSystem => 'Համակարգ';

  @override
  String get aboutDownloadTemplate => 'Ներբեռնել Excel ձևանմուշը';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
