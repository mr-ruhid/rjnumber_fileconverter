// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'RJ Number - 파일 변환기';

  @override
  String get splashLoading => '로딩 중...';

  @override
  String get homeTitle => '작업을 선택하세요';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Excel 파일을 연락처로 변환';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => '연락처를 Excel 파일로 변환';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Lite 버전';

  @override
  String get vcfToExcelTitle => 'VCF를 Excel로 변환';

  @override
  String get vcfToExcelStatusInitial => '시작하려면 VCF (.vcf) 파일을 선택하세요';

  @override
  String get vcfToExcelStatusSuccess => '완료! 파일이 성공적으로 저장되었습니다.';

  @override
  String get vcfToExcelStatusCancelled => '파일 선택이 취소되었습니다.';

  @override
  String get vcfToExcelStatusSaveCancelled => '저장이 취소되었습니다.';

  @override
  String get vcfToExcelStatusEmpty => '오류: 파일에서 유효한 연락처를 찾을 수 없습니다.';

  @override
  String get vcfToExcelStatusError => '변환 중 오류가 발생했습니다.';

  @override
  String get vcfToExcelButton => 'VCF 파일 선택';

  @override
  String get vcfToExcelPleaseWait => '잠시 기다려 주세요...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Excel 파일 저장';

  @override
  String get excelToVcfTitle => 'Excel을 VCF로 변환';

  @override
  String get excelToVcfStatusInitial => '시작하려면 Excel (.xlsx) 파일을 선택하세요';

  @override
  String get excelToVcfStatusSuccess => '완료! 파일이 성공적으로 저장되었습니다.';

  @override
  String get excelToVcfStatusCancelled => '파일 선택이 취소되었습니다.';

  @override
  String get excelToVcfStatusSaveCancelled => '저장이 취소되었습니다.';

  @override
  String get excelToVcfStatusEmpty => '오류: 파일에서 유효한 연락처를 찾을 수 없습니다.';

  @override
  String get excelToVcfStatusError => '변환 중 오류가 발생했습니다.';

  @override
  String get excelToVcfButton => 'Excel 파일 선택';

  @override
  String get excelToVcfPleaseWait => '잠시 기다려 주세요...';

  @override
  String get excelToVcfSaveDialogTitle => 'VCF 파일 저장';

  @override
  String get processingTitle => '파일 변환 중...';

  @override
  String get processingSubtitle => '잠시 기다려 주세요, 프로세스가 진행 중입니다.';

  @override
  String get licenseBadgeActive => '라이선스 활성화됨';

  @override
  String get licenseBadgeTrial => '체험판';

  @override
  String get licenseDialogTitle => '체험 한도 도달';

  @override
  String get licenseDialogContent =>
      '이미 일회성 무료 체험을 사용하셨습니다. 계속하려면 라이선스 코드를 입력하세요.';

  @override
  String get licenseDialogClose => '닫기';

  @override
  String get licenseDialogEnter => '라이선스 입력';

  @override
  String get licenseScreenTitle => '계속하려면 라이선스 코드를 입력하세요';

  @override
  String get licenseFieldHint => '라이선스 코드';

  @override
  String get licenseButtonVerify => '확인';

  @override
  String get licenseErrorEmpty => '라이선스 코드를 입력하세요.';

  @override
  String get licenseErrorInvalid => '유효하지 않은 라이선스 코드입니다. 다시 확인하세요.';

  @override
  String get licenseSuccessTitle => '라이선스가 확인되었습니다!';

  @override
  String get licenseButtonBack => '돌아가기';

  @override
  String get aboutDescription =>
      'Excel 파일을 VCF 연락처로 변환하고 그 반대로 변환하는 간단한 도구입니다.';

  @override
  String get aboutClose => '닫기';

  @override
  String get settingsTitle => '설정';

  @override
  String get settingsTheme => '테마';

  @override
  String get settingsThemeDark => '어두움';

  @override
  String get settingsThemeLight => '밝음';

  @override
  String get settingsThemeSystem => '시스템';

  @override
  String get settingsDefaultFileName => '기본 파일 이름';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'VCF 버전';

  @override
  String get settingsLanguage => '언어';

  @override
  String get settingsLanguageSystem => '시스템';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
