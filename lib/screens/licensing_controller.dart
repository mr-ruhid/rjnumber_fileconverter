import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'converter_page.dart';

/// Lisenziya yoxlanması, keşləmə və sınaq (trial) məntiqini idarə edir.
class LicensingController {
  static const String _prefsKey = 'license_active';
  static const String _trialKey = 'has_used_trial';
  static const String _licenseAssetPath = 'assets/licence/licence.json';

  /// Keşdə saxlanan lisenziya statusunu oxuyur.
  static Future<bool> isLicensed() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_prefsKey) ?? false;
    } catch (e) {
      debugPrint('Lisenziya keşi oxunarkən xəta: $e');
      return false;
    }
  }

  /// İstifadəçinin 1 dəfəlik sınaq hüququndan istifadə edib-etmədiyini yoxlayır.
  static Future<bool> hasUsedTrial() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_trialKey) ?? false;
    } catch (e) {
      debugPrint('Sınaq limiti oxunarkən xəta: $e');
      return false;
    }
  }

  /// İstifadəçinin sınaq hüququnu istifadə etdiyini qeyd edir.
  static Future<void> markTrialUsed() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_trialKey, true);
    } catch (e) {
      debugPrint('Sınaq limiti yazılarkən xəta: $e');
    }
  }

  /// Daxil edilən kodu assets/licence/licence.json-dakı siyahı ilə tutuşdurur.
  static Future<bool> validateLicense(String inputCode) async {
    try {
      final jsonStr = await rootBundle.loadString(_licenseAssetPath);
      final Map<String, dynamic> data = jsonDecode(jsonStr);
      final List<dynamic> validCodes = data['valid_licenses'] ?? [];
      final normalizedInput = inputCode.trim();
      return validCodes.any((code) => code.toString() == normalizedInput);
    } catch (e) {
      debugPrint('Lisenziya faylı oxunarkən xəta: $e');
      return false;
    }
  }

  /// Lisenziyanın aktiv olduğunu keşə yazır.
  static Future<void> cacheLicenseActive() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_prefsKey, true);
    } catch (e) {
      debugPrint('Lisenziya keşə yazılarkən xəta: $e');
    }
  }

  /// Lazım olarsa keşi təmizləmək üçün (test məqsədilə).
  static Future<void> clearCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_prefsKey);
      await prefs.remove(_trialKey);
    } catch (e) {
      debugPrint('Lisenziya keşi silinərkən xəta: $e');
    }
  }
}

/// Popup kimi görünən, müasir şüşə (glassmorphism) effektli lisenziya yoxlama ekranı.
class LicenseScreen extends StatefulWidget {
  const LicenseScreen({super.key});

  @override
  State<LicenseScreen> createState() => _LicenseScreenState();
}

class _LicenseScreenState extends State<LicenseScreen> {
  final TextEditingController _codeController = TextEditingController();
  bool _isChecking = false;
  bool _isValid = false;
  String? _errorText;

  Future<void> _verifyLicense() async {
    final code = _codeController.text.trim();
    if (code.isEmpty) {
      setState(() => _errorText = "Zəhmət olmasa lisenziya kodunu daxil edin.");
      return;
    }

    setState(() {
      _isChecking = true;
      _errorText = null;
    });

    final valid = await LicensingController.validateLicense(code);

    if (!mounted) return;

    if (valid) {
      await LicensingController.cacheLicenseActive();
      if (!mounted) return;
      setState(() {
        _isValid = true;
        _isChecking = false;
      });
    } else {
      setState(() {
        _isValid = false;
        _isChecking = false;
        _errorText = "Yanlış lisenziya kodu. Yenidən yoxlayın.";
      });
    }
  }

  void _goToApp() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const ConverterPage()),
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1E3C72), Color(0xFF2A5298), Color(0xFF0D0B2B)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: 420,
                  padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 44),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white.withOpacity(0.2), width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 30,
                        spreadRadius: -5,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: _isValid ? _buildValidContent() : _buildInputContent(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildInputContent() {
    return [
      SizedBox(
        width: 130,
        height: 130,
        child: Lottie.asset(
          'assets/animation/nolicence.json',
          repeat: true,
          errorBuilder: (context, error, stackTrace) =>
          const Icon(Icons.lock_outline_rounded, color: Colors.white, size: 80),
        ),
      ),
      const SizedBox(height: 24),
      const Text(
        "Davam etmək üçün lisenziya kodunu daxil edin",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 24),
      TextField(
        controller: _codeController,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 1.2),
        decoration: InputDecoration(
          hintText: 'Lisenziya kodu',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          filled: true,
          fillColor: Colors.white.withOpacity(0.08),
          contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.25)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.25)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Colors.white, width: 1.5),
          ),
        ),
        onSubmitted: (_) => _verifyLicense(),
      ),
      if (_errorText != null) ...[
        const SizedBox(height: 12),
        Text(
          _errorText!,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.redAccent, fontSize: 13),
        ),
      ],
      const SizedBox(height: 24),
      SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: _isChecking ? null : _verifyLicense,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            elevation: 8,
          ),
          child: _isChecking
              ? const SizedBox(
            width: 22,
            height: 22,
            child: CircularProgressIndicator(
                color: Color(0xFF1E3C72), strokeWidth: 2.5),
          )
              : const Text(
            'Yoxla',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E3C72)),
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildValidContent() {
    return [
      SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset(
          'assets/animation/yeslicence.json',
          repeat: true,
          errorBuilder: (context, error, stackTrace) =>
          const Icon(Icons.check_circle_rounded, color: Colors.greenAccent, size: 90),
        ),
      ),
      const SizedBox(height: 20),
      const Text(
        "Lisenziya təsdiqləndi!",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 28),
      SizedBox(
        width: double.infinity,
        height: 52,
        child: OutlinedButton.icon(
          onPressed: _goToApp,
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          label: const Text('Geri qayıt',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.white.withOpacity(0.4)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          ),
        ),
      ),
    ];
  }
}