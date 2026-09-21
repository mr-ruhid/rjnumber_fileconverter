// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'RJ Number - Konverter File';

  @override
  String get splashLoading => 'Memuat...';

  @override
  String get homeTitle => 'Pilih tindakan';

  @override
  String get homeExcelToVcf => 'Excel → VCF';

  @override
  String get homeExcelToVcfDesc => 'Konversi file Excel ke kontak';

  @override
  String get homeVcfToExcel => 'VCF → Excel';

  @override
  String get homeVcfToExcelDesc => 'Konversi kontak ke file Excel';

  @override
  String get homeFooter => 'Ruhid Javadov - Mr-Ruhid';

  @override
  String get homeVersion => 'Versi Lite';

  @override
  String get vcfToExcelTitle => 'Konversi VCF ke Excel';

  @override
  String get vcfToExcelStatusInitial => 'Pilih file VCF (.vcf) untuk memulai';

  @override
  String get vcfToExcelStatusSuccess => 'Selesai! File berhasil disimpan.';

  @override
  String get vcfToExcelStatusCancelled => 'Pemilihan file dibatalkan.';

  @override
  String get vcfToExcelStatusSaveCancelled => 'Penyimpanan dibatalkan.';

  @override
  String get vcfToExcelStatusEmpty =>
      'Error: Tidak ada kontak valid yang ditemukan dalam file.';

  @override
  String get vcfToExcelStatusError => 'Terjadi kesalahan saat konversi.';

  @override
  String get vcfToExcelButton => 'Pilih File VCF';

  @override
  String get vcfToExcelPleaseWait => 'Harap tunggu...';

  @override
  String get vcfToExcelSaveDialogTitle => 'Simpan file Excel';

  @override
  String get excelToVcfTitle => 'Konversi Excel ke VCF';

  @override
  String get excelToVcfStatusInitial =>
      'Pilih file Excel (.xlsx) untuk memulai';

  @override
  String get excelToVcfStatusSuccess => 'Selesai! File berhasil disimpan.';

  @override
  String get excelToVcfStatusCancelled => 'Pemilihan file dibatalkan.';

  @override
  String get excelToVcfStatusSaveCancelled => 'Penyimpanan dibatalkan.';

  @override
  String get excelToVcfStatusEmpty =>
      'Error: Tidak ada kontak valid yang ditemukan dalam file.';

  @override
  String get excelToVcfStatusError => 'Terjadi kesalahan saat konversi.';

  @override
  String get excelToVcfButton => 'Pilih File Excel';

  @override
  String get excelToVcfPleaseWait => 'Harap tunggu...';

  @override
  String get excelToVcfSaveDialogTitle => 'Simpan file VCF';

  @override
  String get processingTitle => 'Mengonversi file...';

  @override
  String get processingSubtitle => 'Harap tunggu, proses sedang berjalan.';

  @override
  String get licenseBadgeActive => 'Lisensi Aktif';

  @override
  String get licenseBadgeTrial => 'Versi Uji Coba';

  @override
  String get licenseDialogTitle => 'Batas Uji Coba Tercapai';

  @override
  String get licenseDialogContent =>
      'Anda sudah menggunakan uji coba gratis satu kali Anda. Untuk melanjutkan, masukkan kode lisensi Anda.';

  @override
  String get licenseDialogClose => 'Tutup';

  @override
  String get licenseDialogEnter => 'Masukkan Lisensi';

  @override
  String get licenseScreenTitle =>
      'Masukkan kode lisensi Anda untuk melanjutkan';

  @override
  String get licenseFieldHint => 'Kode lisensi';

  @override
  String get licenseButtonVerify => 'Verifikasi';

  @override
  String get licenseErrorEmpty => 'Harap masukkan kode lisensi Anda.';

  @override
  String get licenseErrorInvalid =>
      'Kode lisensi tidak valid. Silakan periksa lagi.';

  @override
  String get licenseSuccessTitle => 'Lisensi terverifikasi!';

  @override
  String get licenseButtonBack => 'Kembali';

  @override
  String get aboutDescription =>
      'Alat sederhana untuk mengonversi file Excel ke kontak VCF dan sebaliknya.';

  @override
  String get aboutClose => 'Tutup';

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeDark => 'Gelap';

  @override
  String get settingsThemeLight => 'Terang';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsDefaultFileName => 'Nama file default';

  @override
  String get settingsDefaultFileNameHint => 'Kontaktlar';

  @override
  String get settingsVcfVersion => 'Versi VCF';

  @override
  String get settingsVcfVersion3 => '3.0';

  @override
  String get settingsVcfVersion4 => '4.0';
}
