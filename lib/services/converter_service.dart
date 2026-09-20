import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

import '../screens/licensing_controller.dart';
import '../services/converter_service.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  String _statusText = "Başlamaq üçün Excel (.xlsx) faylını seçin";
  bool _isLoading = false;
  bool _isLicensed = false;

  @override
  void initState() {
    super.initState();
    _checkLicenseStatus();
  }

  Future<void> _checkLicenseStatus() async {
    final licensed = await LicensingController.isLicensed();
    if (!mounted) return;
    setState(() => _isLicensed = licensed);
  }

  void _showLicenseRequiredDialog() {
    if (!mounted) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1E3C72),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Row(
          children: [
            Icon(Icons.warning_amber_rounded,
                color: Colors.orangeAccent, size: 30),
            SizedBox(width: 10),
            Text("Sınaq Limiti Bitdi", style: TextStyle(color: Colors.white)),
          ],
        ),
        content: const Text(
          "Siz artıq 1 dəfəlik pulsuz sınaq hüququnuzdan istifadə etmisiniz. "
              "Davam etmək üçün zəhmət olmasa lisenziya kodunu daxil edin.",
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Bağla",
                style: TextStyle(color: Colors.white70)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF1E3C72),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const LicenseScreen()),
              );
            },
            child: const Text("Lisenziya Daxil Et"),
          ),
        ],
      ),
    );
  }

  /// Lisenziya yoxlanışı — tək yerdə, təkrar istifadə üçün.
  Future<bool> _canProceed() async {
    final isLicensed = await LicensingController.isLicensed();
    if (isLicensed) return true;

    final hasUsedTrial = await LicensingController.hasUsedTrial();
    if (hasUsedTrial) {
      if (mounted) _showLicenseRequiredDialog();
      return false;
    }
    return true;
  }

  Future<void> pickAndConvert() async {
    // 1. LİSENZİYA YOXLANIŞI
    if (!await _canProceed()) return;
    if (!mounted) return;

    // 2. FAYL SEÇİMİ
    PlatformFile? pickedFile;
    try {
      pickedFile = await ConverterService.pickExcelFile();
    } catch (e) {
      debugPrint("FilePicker xətası: $e");
      if (mounted) {
        setState(() => _statusText = "Fayl seçicisini açarkən xəta: $e");
      }
      return;
    }

    if (pickedFile == null) {
      if (mounted) setState(() => _statusText = "Fayl seçimi ləğv edildi.");
      return;
    }

    if (mounted) {
      setState(() {
        _isLoading = true;
        _statusText = "Fayl oxunur və çevrilir...";
      });
    }

    try {
      // 3. EXCEL OXUMA
      final bytes = await pickedFile.readAsBytes();
      final contacts = ConverterService.readContactsFromExcel(bytes);

      if (contacts.isEmpty) {
        if (mounted) {
          setState(() => _statusText =
          "Xəta: Faylda uyğun nömrə tapılmadı və ya format səhvdir.");
        }
        return;
      }

      // 4. VCF YARATMA
      final vcfContent = ConverterService.contactsToVcf(contacts);

      // 5. YADDA SAXLAMA
      final outputUri = await ConverterService.saveVcfFile(
        vcfContent,
        'Musteri_Kontaktlari.vcf',
      );

      if (!mounted) return;

      if (outputUri != null) {
        setState(() => _statusText =
        "Əla! Fayl uğurla yadda saxlanıldı.\n\nFayl yolu: ${outputUri.toFilePath()}");

        // Trial istifadə edildisə qeyd et
        final isLicensed = await LicensingController.isLicensed();
        if (!isLicensed) {
          await LicensingController.markTrialUsed();
        }
      } else {
        setState(() => _statusText = "Yadda saxlamaqdan imtina edildi.");
      }
    } on ConverterException catch (e) {
      if (mounted) setState(() => _statusText = e.message);
    } catch (e) {
      debugPrint("Gözlənilməz xəta: $e");
      if (mounted) setState(() => _statusText = "Xəta baş verdi: $e");
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse('https://github.com/mr-ruhid');
    final launched = await launchUrl(url, mode: LaunchMode.externalApplication);
    if (!launched) debugPrint('Link açıla bilmədi: $url');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF1E3C72),
                  Color(0xFF2A5298),
                  Color(0xFF0D0B2B)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: SvgPicture.asset(
              'assets/logo/logo.svg',
              height: 60,
              placeholderBuilder: (context) =>
              const Icon(Icons.api_rounded, color: Colors.white, size: 60),
            ),
          ),
          Positioned(
            top: 25,
            right: 25,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: _isLicensed
                    ? Colors.greenAccent.withOpacity(0.15)
                    : Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: _isLicensed
                      ? Colors.greenAccent.withOpacity(0.4)
                      : Colors.white.withOpacity(0.2),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.workspace_premium_rounded,
                    color:
                    _isLicensed ? Colors.amberAccent : Colors.grey.shade400,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    _isLicensed ? "Lisenziya Aktivdir" : "Sınaq Versiyası",
                    style: TextStyle(
                      color: _isLicensed
                          ? Colors.greenAccent
                          : Colors.grey.shade300,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  width: 500,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2), width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 30,
                        spreadRadius: -5,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Lottie.asset(
                          'assets/animation/call.json',
                          repeat: true,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.15),
                                ),
                                child: const Icon(
                                  Icons.contact_phone_rounded,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Excel faylınızı Kontaktlara (VCF) çevirin",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        _statusText,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton.icon(
                          onPressed: _isLoading ? null : pickAndConvert,
                          icon: _isLoading
                              ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                  color: Color(0xFF1E3C72),
                                  strokeWidth: 2.5))
                              : const Icon(Icons.upload_file_rounded,
                              color: Color(0xFF1E3C72)),
                          label: Text(
                            _isLoading ? 'Gözləyin...' : 'Excel Faylını Seç',
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF1E3C72)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: _launchUrl,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(color: Colors.white.withOpacity(0.1)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Ruhid Javadov - Mr-Ruhid',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.redAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: Colors.redAccent.withOpacity(0.5)),
                          ),
                          child: const Text(
                            'Lite version',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          IgnorePointer(
            ignoring: !_isLoading,
            child: AnimatedOpacity(
              opacity: _isLoading ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn,
              child: Container(
                color: Colors.black.withOpacity(0.85),
                child: Center(
                  child: Container(
                    width: 350,
                    padding: const EdgeInsets.all(35),
                    decoration: BoxDecoration(
                      color: const Color(0xFF162955),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.15), width: 1.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Lottie.asset(
                          'assets/animation/convert.json',
                          width: 140,
                          height: 140,
                          repeat: true,
                          errorBuilder: (context, error, stackTrace) =>
                          const SizedBox(
                            width: 140,
                            height: 140,
                            child:
                            CircularProgressIndicator(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "Fayl çevrilir...",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Zəhmət olmasa gözləyin, proses gedir.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}