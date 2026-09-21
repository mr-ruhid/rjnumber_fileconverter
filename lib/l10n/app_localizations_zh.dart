// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => '加载中...';

  @override
  String get homeTitle => '选择操作';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => '将 Excel 文件转换为联系人';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => '将联系人转换为 Excel 文件';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => '精简版';

  @override
  String get vcfToExcelTitle => '将 VCF 转换为 Excel';

  @override
  String get vcfToExcelStatusInitial => '选择 VCF (.vcf) 文件以开始';

  @override
  String get vcfToExcelStatusSuccess => '完成！文件已成功保存。';

  @override
  String get vcfToExcelStatusCancelled => '已取消文件选择。';

  @override
  String get vcfToExcelStatusSaveCancelled => '已取消保存。';

  @override
  String get vcfToExcelStatusEmpty => '错误：文件中未找到有效联系人。';

  @override
  String get vcfToExcelStatusError => '转换过程中发生错误。';

  @override
  String get vcfToExcelButton => '选择 VCF 文件';

  @override
  String get vcfToExcelPleaseWait => '请稍候...';

  @override
  String get vcfToExcelSaveDialogTitle => '保存 Excel 文件';

  @override
  String get excelToVcfTitle => '将 Excel 转换为 VCF';

  @override
  String get excelToVcfStatusInitial => '选择 Excel (.xlsx) 文件以开始';

  @override
  String get excelToVcfStatusSuccess => '完成！文件已成功保存。';

  @override
  String get excelToVcfStatusCancelled => '已取消文件选择。';

  @override
  String get excelToVcfStatusSaveCancelled => '已取消保存。';

  @override
  String get excelToVcfStatusEmpty => '错误：文件中未找到有效联系人。';

  @override
  String get excelToVcfStatusError => '转换过程中发生错误。';

  @override
  String get excelToVcfButton => '选择 Excel 文件';

  @override
  String get excelToVcfPleaseWait => '请稍候...';

  @override
  String get excelToVcfSaveDialogTitle => '保存 VCF 文件';

  @override
  String get processingTitle => '正在转换文件...';

  @override
  String get processingSubtitle => '请稍候，处理正在进行中。';

  @override
  String get licenseBadgeActive => '许可证有效';

  @override
  String get licenseBadgeTrial => '试用版';

  @override
  String get licenseDialogTitle => '试用次数已达上限';

  @override
  String get licenseDialogContent => '您已使用过一次免费试用。要继续使用，请输入您的许可证代码。';

  @override
  String get licenseDialogClose => '关闭';

  @override
  String get licenseDialogEnter => '输入许可证';

  @override
  String get licenseScreenTitle => '输入您的许可证代码以继续';

  @override
  String get licenseFieldHint => '许可证代码';

  @override
  String get licenseButtonVerify => '验证';

  @override
  String get licenseErrorEmpty => '请输入您的许可证代码。';

  @override
  String get licenseErrorInvalid => '许可证代码无效。请重新检查。';

  @override
  String get licenseSuccessTitle => '许可证验证成功！';

  @override
  String get licenseButtonBack => '返回';

  @override
  String get aboutDescription => '一个简单的工具，可将 Excel 文件转换为 VCF 联系人，并可反向转换。';

  @override
  String get aboutClose => '关闭';

  @override
  String get settingsTitle => '设置';

  @override
  String get settingsTheme => '主题';

  @override
  String get settingsThemeDark => '深色';

  @override
  String get settingsThemeLight => '浅色';

  @override
  String get settingsThemeSystem => '系统';

  @override
  String get settingsDefaultFileName => '默认文件名';

  @override
  String get settingsDefaultFileNameHint => '联系人';

  @override
  String get settingsVcfVersion => 'VCF 版本';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsLanguageSystem => '系统';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
