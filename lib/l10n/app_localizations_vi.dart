// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'Đang tải...';

  @override
  String get homeTitle => 'Chọn một hành động';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Chuyển đổi tệp Excel thành danh bạ';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Chuyển đổi danh bạ thành tệp Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Phiên bản Lite';

  @override
  String get vcfToExcelTitle => 'Chuyển đổi VCF sang Excel';

  @override
  String get vcfToExcelStatusInitial => 'Chọn tệp VCF (.vcf) để bắt đầu';

  @override
  String get vcfToExcelStatusSuccess => 'Hoàn tất! Tệp đã được lưu thành công.';

  @override
  String get vcfToExcelStatusCancelled => 'Đã hủy chọn tệp.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Đã hủy lưu.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Lỗi: Không tìm thấy danh bạ hợp lệ nào trong tệp.';

  @override
  String get vcfToExcelStatusError =>
      'Đã xảy ra lỗi trong quá trình chuyển đổi.';

  @override
  String get vcfToExcelButton => 'Chọn tệp VCF';

  @override
  String get vcfToExcelPleaseWait => 'Vui lòng đợi...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Lưu tệp Excel';

  @override
  String get excelToVcfTitle => 'Chuyển đổi Excel sang VCF';

  @override
  String get excelToVcfStatusInitial => 'Chọn tệp Excel (.xlsx) để bắt đầu';

  @override
  String get excelToVcfStatusSuccess => 'Hoàn tất! Tệp đã được lưu thành công.';

  @override
  String get excelToVcfStatusCancelled => 'Đã hủy chọn tệp.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Đã hủy lưu.';

  @override
  String get excelToVcfStatusEmpty =>
      'Lỗi: Không tìm thấy danh bạ hợp lệ nào trong tệp.';

  @override
  String get excelToVcfStatusError =>
      'Đã xảy ra lỗi trong quá trình chuyển đổi.';

  @override
  String get excelToVcfButton => 'Chọn tệp Excel';

  @override
  String get excelToVcfPleaseWait => 'Vui lòng đợi...';

  @override
  String get excelToVcfSaveDialogTitle => 'Lưu tệp VCF';

  @override
  String get processingTitle => 'Đang chuyển đổi tệp...';

  @override
  String get processingSubtitle => 'Vui lòng đợi, quá trình đang chạy.';

  @override
  String get licenseBadgeActive => 'Giấy phép đang hoạt động';

  @override
  String get licenseBadgeTrial => 'Phiên bản dùng thử';

  @override
  String get licenseDialogTitle => 'Đã đạt giới hạn dùng thử';

  @override
  String get licenseDialogContent =>
      'Bạn đã sử dụng một lần dùng thử miễn phí. Để tiếp tục, vui lòng nhập mã giấy phép của bạn.';

  @override
  String get licenseDialogClose => 'Đóng';

  @override
  String get licenseDialogEnter => 'Nhập giấy phép';

  @override
  String get licenseScreenTitle => 'Nhập mã giấy phép của bạn để tiếp tục';

  @override
  String get licenseFieldHint => 'Mã giấy phép';

  @override
  String get licenseButtonVerify => 'Xác minh';

  @override
  String get licenseErrorEmpty => 'Vui lòng nhập mã giấy phép của bạn.';

  @override
  String get licenseErrorInvalid =>
      'Mã giấy phép không hợp lệ. Vui lòng kiểm tra lại.';

  @override
  String get licenseSuccessTitle => 'Đã xác minh giấy phép!';

  @override
  String get licenseButtonBack => 'Quay lại';

  @override
  String get aboutDescription =>
      'Một công cụ đơn giản để chuyển đổi tệp Excel thành danh bạ VCF và ngược lại.';

  @override
  String get aboutClose => 'Đóng';

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get settingsTheme => 'Chủ đề';

  @override
  String get settingsThemeDark => 'Tối';

  @override
  String get settingsThemeLight => 'Sáng';

  @override
  String get settingsThemeSystem => 'Hệ thống';

  @override
  String get settingsDefaultFileName => 'Tên tệp mặc định';

  @override
  String get settingsDefaultFileNameHint => 'Danh bạ';

  @override
  String get settingsVcfVersion => 'Phiên bản VCF';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
