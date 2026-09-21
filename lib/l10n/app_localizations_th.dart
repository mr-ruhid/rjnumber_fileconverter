// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'RJ Number - File Converter';

  @override
  String get splashLoading => 'กำลังโหลด...';

  @override
  String get homeTitle => 'เลือกการทำงาน';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'แปลงไฟล์ Excel เป็นรายชื่อผู้ติดต่อ';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'แปลงรายชื่อผู้ติดต่อเป็นไฟล์ Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'เวอร์ชัน Lite';

  @override
  String get vcfToExcelTitle => 'แปลง VCF เป็น Excel';

  @override
  String get vcfToExcelStatusInitial => 'เลือกไฟล์ VCF (.vcf) เพื่อเริ่มต้น';

  @override
  String get vcfToExcelStatusSuccess => 'เสร็จสิ้น! บันทึกไฟล์เรียบร้อยแล้ว';

  @override
  String get vcfToExcelStatusCancelled => 'ยกเลิกการเลือกไฟล์';

  @override
  String get vcfToExcelStatusSaveCancelled => 'ยกเลิกการบันทึก';

  @override
  String get vcfToExcelStatusEmpty =>
      'ข้อผิดพลาด: ไม่พบรายชื่อผู้ติดต่อที่ถูกต้องในไฟล์';

  @override
  String get vcfToExcelStatusError => 'เกิดข้อผิดพลาดระหว่างการแปลง';

  @override
  String get vcfToExcelButton => 'เลือกไฟล์ VCF';

  @override
  String get vcfToExcelPleaseWait => 'กรุณารอสักครู่...';

  @override
  String get vcfToExcelSaveDialogTitle => 'บันทึกไฟล์ Excel';

  @override
  String get excelToVcfTitle => 'แปลง Excel เป็น VCF';

  @override
  String get excelToVcfStatusInitial => 'เลือกไฟล์ Excel (.xlsx) เพื่อเริ่มต้น';

  @override
  String get excelToVcfStatusSuccess => 'เสร็จสิ้น! บันทึกไฟล์เรียบร้อยแล้ว';

  @override
  String get excelToVcfStatusCancelled => 'ยกเลิกการเลือกไฟล์';

  @override
  String get excelToVcfStatusSaveCancelled => 'ยกเลิกการบันทึก';

  @override
  String get excelToVcfStatusEmpty =>
      'ข้อผิดพลาด: ไม่พบรายชื่อผู้ติดต่อที่ถูกต้องในไฟล์';

  @override
  String get excelToVcfStatusError => 'เกิดข้อผิดพลาดระหว่างการแปลง';

  @override
  String get excelToVcfButton => 'เลือกไฟล์ Excel';

  @override
  String get excelToVcfPleaseWait => 'กรุณารอสักครู่...';

  @override
  String get excelToVcfSaveDialogTitle => 'บันทึกไฟล์ VCF';

  @override
  String get processingTitle => 'กำลังแปลงไฟล์...';

  @override
  String get processingSubtitle => 'กรุณารอสักครู่ กำลังดำเนินการ';

  @override
  String get licenseBadgeActive => 'ลิขสิทธิ์ใช้งานได้';

  @override
  String get licenseBadgeTrial => 'เวอร์ชันทดลอง';

  @override
  String get licenseDialogTitle => 'ถึงขีดจำกัดการทดลองแล้ว';

  @override
  String get licenseDialogContent =>
      'คุณได้ใช้การทดลองฟรีหนึ่งครั้งแล้ว หากต้องการใช้งานต่อ กรุณากรอกรหัสลิขสิทธิ์';

  @override
  String get licenseDialogClose => 'ปิด';

  @override
  String get licenseDialogEnter => 'กรอกรหัสลิขสิทธิ์';

  @override
  String get licenseScreenTitle => 'กรอกรหัสลิขสิทธิ์เพื่อใช้งานต่อ';

  @override
  String get licenseFieldHint => 'รหัสลิขสิทธิ์';

  @override
  String get licenseButtonVerify => 'ตรวจสอบ';

  @override
  String get licenseErrorEmpty => 'กรุณากรอกรหัสลิขสิทธิ์';

  @override
  String get licenseErrorInvalid =>
      'รหัสลิขสิทธิ์ไม่ถูกต้อง กรุณาตรวจสอบอีกครั้ง';

  @override
  String get licenseSuccessTitle => 'ตรวจสอบลิขสิทธิ์สำเร็จ!';

  @override
  String get licenseButtonBack => 'ย้อนกลับ';

  @override
  String get aboutDescription =>
      'เครื่องมือง่ายๆ สำหรับแปลงไฟล์ Excel เป็นรายชื่อผู้ติดต่อ VCF และกลับกัน';

  @override
  String get aboutClose => 'ปิด';

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get settingsTheme => 'ธีม';

  @override
  String get settingsThemeDark => 'มืด';

  @override
  String get settingsThemeLight => 'สว่าง';

  @override
  String get settingsThemeSystem => 'ตามระบบ';

  @override
  String get settingsDefaultFileName => 'ชื่อไฟล์เริ่มต้น';

  @override
  String get settingsDefaultFileNameHint => 'Contacts';

  @override
  String get settingsVcfVersion => 'เวอร์ชัน VCF';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
