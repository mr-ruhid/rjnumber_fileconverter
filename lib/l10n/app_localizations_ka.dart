// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'RJ Number - ფაილის გადამყვანი';

  @override
  String get splashLoading => 'იტვირთება...';

  @override
  String get homeTitle => 'აირჩიეთ მოქმედება';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel ფაილის კონტაქტებად გადაყვანა';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'კონტაქტების Excel ფაილად გადაყვანა';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite ვერსია';

  @override
  String get vcfToExcelTitle => 'VCF-ის Excel-ად გადაყვანა';

  @override
  String get vcfToExcelStatusInitial => 'დასაწყებად აირჩიეთ VCF (.vcf) ფაილი';

  @override
  String get vcfToExcelStatusSuccess => 'მზადაა! ფაილი წარმატებით შენახულია.';

  @override
  String get vcfToExcelStatusCancelled => 'ფაილის არჩევა გაუქმდა.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'შენახვა გაუქმდა.';

  @override
  String get vcfToExcelStatusEmpty =>
      'შეცდომა: ფაილში ვერ მოიძებნა შესაბამისი კონტაქტები.';

  @override
  String get vcfToExcelStatusError => 'გადაყვანის დროს მოხდა შეცდომა.';

  @override
  String get vcfToExcelButton => 'აირჩიეთ VCF ფაილი';

  @override
  String get vcfToExcelPleaseWait => 'გთხოვთ დაელოდოთ...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Excel ფაილის შენახვა';

  @override
  String get excelToVcfTitle => 'Excel-ის VCF-ად გადაყვანა';

  @override
  String get excelToVcfStatusInitial =>
      'დასაწყებად აირჩიეთ Excel (.xlsx) ფაილი';

  @override
  String get excelToVcfStatusSuccess => 'მზადაა! ფაილი წარმატებით შენახულია.';

  @override
  String get excelToVcfStatusCancelled => 'ფაილის არჩევა გაუქმდა.';

  @override
  String get excelToVcfStatusSaveCancelled => 'შენახვა გაუქმდა.';

  @override
  String get excelToVcfStatusEmpty =>
      'შეცდომა: ფაილში ვერ მოიძებნა შესაბამისი კონტაქტები.';

  @override
  String get excelToVcfStatusError => 'გადაყვანის დროს მოხდა შეცდომა.';

  @override
  String get excelToVcfButton => 'აირჩიეთ Excel ფაილი';

  @override
  String get excelToVcfPleaseWait => 'გთხოვთ დაელოდოთ...';

  @override
  String get excelToVcfSaveDialogTitle => 'VCF ფაილის შენახვა';

  @override
  String get processingTitle => 'ფაილი მუშავდება...';

  @override
  String get processingSubtitle => 'გთხოვთ დაელოდოთ, პროცესი მიმდინარეობს.';

  @override
  String get licenseBadgeActive => 'ლიცენზია აქტიურია';

  @override
  String get licenseBadgeTrial => 'საცდელი ვერსია';

  @override
  String get licenseDialogTitle => 'საცდელი ლიმიტი ამოიწურა';

  @override
  String get licenseDialogContent =>
      'თქვენ უკვე გამოიყენეთ თქვენი ერთჯერადი უფასო საცდელი. გასაგრძელებლად შეიყვანეთ ლიცენზიის კოდი.';

  @override
  String get licenseDialogClose => 'დახურვა';

  @override
  String get licenseDialogEnter => 'ლიცენზიის შეყვანა';

  @override
  String get licenseScreenTitle => 'გასაგრძელებლად შეიყვანეთ ლიცენზიის კოდი';

  @override
  String get licenseFieldHint => 'ლიცენზიის კოდი';

  @override
  String get licenseButtonVerify => 'შემოწმება';

  @override
  String get licenseErrorEmpty => 'გთხოვთ შეიყვანოთ ლიცენზიის კოდი.';

  @override
  String get licenseErrorInvalid =>
      'არასწორი ლიცენზიის კოდი. გთხოვთ შეამოწმოთ ხელახლა.';

  @override
  String get licenseSuccessTitle => 'ლიცენზია დადასტურებულია!';

  @override
  String get licenseButtonBack => 'დაბრუნება';

  @override
  String get aboutDescription =>
      'მარტივი ინსტრუმენტი Excel ფაილების VCF კონტაქტებად და უკან გადასაყვანად.';

  @override
  String get aboutClose => 'დახურვა';

  @override
  String get settingsTitle => 'პარამეტრები';

  @override
  String get settingsTheme => 'თემა';

  @override
  String get settingsThemeDark => 'მუქი';

  @override
  String get settingsThemeLight => 'ნათელი';

  @override
  String get settingsThemeSystem => 'სისტემური';

  @override
  String get settingsDefaultFileName => 'ნაგულისხმევი ფაილის სახელი';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'VCF ვერსია';

  @override
  String get settingsLanguage => 'ენა';

  @override
  String get settingsLanguageSystem => 'სისტემა';

  @override
  String get aboutDownloadTemplate => 'Excel შაბლონის ჩამოტვირთვა';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
