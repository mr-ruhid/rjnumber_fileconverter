// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => '読み込み中...';

  @override
  String get homeTitle => '操作を選択してください';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel ファイルを連絡先に変換';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => '連絡先を Excel ファイルに変換';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite 版';

  @override
  String get vcfToExcelTitle => 'VCF を Excel に変換';

  @override
  String get vcfToExcelStatusInitial => '開始するには VCF (.vcf) ファイルを選択してください';

  @override
  String get vcfToExcelStatusSuccess => '完了！ファイルが正常に保存されました。';

  @override
  String get vcfToExcelStatusCancelled => 'ファイルの選択がキャンセルされました。';

  @override
  String get vcfToExcelStatusSaveCancelled => '保存がキャンセルされました。';

  @override
  String get vcfToExcelStatusEmpty => 'エラー：ファイルに有効な連絡先が見つかりませんでした。';

  @override
  String get vcfToExcelStatusError => '変換中にエラーが発生しました。';

  @override
  String get vcfToExcelButton => 'VCF ファイルを選択';

  @override
  String get vcfToExcelPleaseWait => 'しばらくお待ちください...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Excel ファイルを保存';

  @override
  String get excelToVcfTitle => 'Excel を VCF に変換';

  @override
  String get excelToVcfStatusInitial => '開始するには Excel (.xlsx) ファイルを選択してください';

  @override
  String get excelToVcfStatusSuccess => '完了！ファイルが正常に保存されました。';

  @override
  String get excelToVcfStatusCancelled => 'ファイルの選択がキャンセルされました。';

  @override
  String get excelToVcfStatusSaveCancelled => '保存がキャンセルされました。';

  @override
  String get excelToVcfStatusEmpty => 'エラー：ファイルに有効な連絡先が見つかりませんでした。';

  @override
  String get excelToVcfStatusError => '変換中にエラーが発生しました。';

  @override
  String get excelToVcfButton => 'Excel ファイルを選択';

  @override
  String get excelToVcfPleaseWait => 'しばらくお待ちください...';

  @override
  String get excelToVcfSaveDialogTitle => 'VCF ファイルを保存';

  @override
  String get processingTitle => 'ファイルを変換中...';

  @override
  String get processingSubtitle => 'しばらくお待ちください。処理を実行中です。';

  @override
  String get licenseBadgeActive => 'ライセンス有効';

  @override
  String get licenseBadgeTrial => '試用版';

  @override
  String get licenseDialogTitle => '試用回数の上限に達しました';

  @override
  String get licenseDialogContent =>
      '1 回限りの無料試用を既に使用されています。続行するには、ライセンスコードを入力してください。';

  @override
  String get licenseDialogClose => '閉じる';

  @override
  String get licenseDialogEnter => 'ライセンスを入力';

  @override
  String get licenseScreenTitle => '続行するにはライセンスコードを入力してください';

  @override
  String get licenseFieldHint => 'ライセンスコード';

  @override
  String get licenseButtonVerify => '確認';

  @override
  String get licenseErrorEmpty => 'ライセンスコードを入力してください。';

  @override
  String get licenseErrorInvalid => 'ライセンスコードが無効です。もう一度確認してください。';

  @override
  String get licenseSuccessTitle => 'ライセンスが確認されました！';

  @override
  String get licenseButtonBack => '戻る';

  @override
  String get aboutDescription => 'Excel ファイルを VCF 連絡先に変換し、その逆も行えるシンプルなツールです。';

  @override
  String get aboutClose => '閉じる';

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsTheme => 'テーマ';

  @override
  String get settingsThemeDark => 'ダーク';

  @override
  String get settingsThemeLight => 'ライト';

  @override
  String get settingsThemeSystem => 'システム';

  @override
  String get settingsDefaultFileName => 'デフォルトのファイル名';

  @override
  String get settingsDefaultFileNameHint => '連絡先';

  @override
  String get settingsVcfVersion => 'VCF バージョン';

  @override
  String get settingsLanguage => '言語';

  @override
  String get settingsLanguageSystem => 'システム';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
