import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../l10n/app_localizations.dart';
import '../ui/app_theme.dart';
import '../ui/widgets/glass_card.dart';
import 'home_page.dart';

class LicensingController {
  static const String _prefsKey = 'license_active';
  static const String _trialKey = 'has_used_trial';
  static const String _licenseAssetPath = 'assets/licence/licence.json';

  static Future<bool> isLicensed() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_prefsKey) ?? false;
    } catch (e) {
      debugPrint('License cache read error: $e');
      return false;
    }
  }

  static Future<bool> hasUsedTrial() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_trialKey) ?? false;
    } catch (e) {
      debugPrint('Trial limit read error: $e');
      return false;
    }
  }

  static Future<void> markTrialUsed() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_trialKey, true);
    } catch (e) {
      debugPrint('Trial limit write error: $e');
    }
  }

  static Future<bool> validateLicense(String inputCode) async {
    try {
      final jsonStr = await rootBundle.loadString(_licenseAssetPath);
      final Map<String, dynamic> data = jsonDecode(jsonStr);
      final List<dynamic> validCodes = data['valid_licenses'] ?? [];
      final normalizedInput = inputCode.trim();
      return validCodes.any((code) => code.toString() == normalizedInput);
    } catch (e) {
      debugPrint('License file read error: $e');
      return false;
    }
  }

  static Future<void> cacheLicenseActive() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_prefsKey, true);
    } catch (e) {
      debugPrint('License cache write error: $e');
    }
  }

  static Future<void> clearCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_prefsKey);
      await prefs.remove(_trialKey);
    } catch (e) {
      debugPrint('License cache clear error: $e');
    }
  }
}

class LicenseScreen extends StatefulWidget {
  const LicenseScreen({super.key});

  @override
  State<LicenseScreen> createState() => _LicenseScreenState();
}

class _LicenseScreenState extends State<LicenseScreen> {
  final TextEditingController _codeController = TextEditingController();
  bool _isChecking = false;
  bool _isValid = false;
  String? _errorKey;

  Future<void> _verifyLicense() async {
    final code = _codeController.text.trim();
    if (code.isEmpty) {
      setState(() => _errorKey = 'licenseErrorEmpty');
      return;
    }

    setState(() {
      _isChecking = true;
      _errorKey = null;
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
        _errorKey = 'licenseErrorInvalid';
      });
    }
  }

  void _goToApp() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
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
          Container(decoration: BoxDecoration(gradient: AppTheme.backgroundGradient(context))),
          Center(
            child: GlassCard(
              width: AppTheme.cardWidthSmall,
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 44),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: _isValid ? _buildValidContent() : _buildInputContent(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildInputContent() {
    final l10n = AppLocalizations.of(context)!;
    return [
      SizedBox(
        width: 130,
        height: 130,
        child: Lottie.asset(
          'assets/animation/nolicence.json',
          repeat: true,
          errorBuilder: (context, error, stackTrace) => Icon(
            Icons.lock_outline_rounded,
            color: AppTheme.textPrimary(context),
            size: 80,
          ),
        ),
      ),
      const SizedBox(height: 24),
      Text(
        l10n.licenseScreenTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppTheme.textPrimary(context),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 24),
      TextField(
        controller: _codeController,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppTheme.textPrimary(context),
          fontSize: 16,
          letterSpacing: 1.2,
        ),
        decoration: InputDecoration(
          hintText: l10n.licenseFieldHint,
          hintStyle: TextStyle(color: AppTheme.textMuted(context)),
          filled: true,
          fillColor: AppTheme.inputFill(context),
          contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            borderSide: BorderSide(color: AppTheme.inputBorder(context)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            borderSide: BorderSide(color: AppTheme.inputBorder(context)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            borderSide: BorderSide(color: AppTheme.textPrimary(context), width: 1.5),
          ),
        ),
        onSubmitted: (_) => _verifyLicense(),
      ),
      if (_errorKey != null) ...[
        const SizedBox(height: 12),
        Text(
          _errorKey == 'licenseErrorEmpty' ? l10n.licenseErrorEmpty : l10n.licenseErrorInvalid,
          textAlign: TextAlign.center,
          style: const TextStyle(color: AppTheme.accentRed, fontSize: 13),
        ),
      ],
      const SizedBox(height: 24),
      SizedBox(
        width: double.infinity,
        height: 52,
        child: ElevatedButton(
          onPressed: _isChecking ? null : _verifyLicense,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.textPrimary(context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            ),
            elevation: 8,
          ),
          child: _isChecking
              ? SizedBox(
            width: 22,
            height: 22,
            child: CircularProgressIndicator(
              color: AppTheme.gradientTopLeft(context),
              strokeWidth: 2.5,
            ),
          )
              : Text(
            l10n.licenseButtonVerify,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppTheme.gradientTopLeft(context),
            ),
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildValidContent() {
    final l10n = AppLocalizations.of(context)!;
    return [
      SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset(
          'assets/animation/yeslicence.json',
          repeat: true,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.check_circle_rounded,
            color: AppTheme.accentGreen,
            size: 90,
          ),
        ),
      ),
      const SizedBox(height: 20),
      Text(
        l10n.licenseSuccessTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppTheme.textPrimary(context),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 28),
      SizedBox(
        width: double.infinity,
        height: 52,
        child: OutlinedButton.icon(
          onPressed: _goToApp,
          icon: Icon(Icons.arrow_back_rounded, color: AppTheme.textPrimary(context)),
          label: Text(
            l10n.licenseButtonBack,
            style: TextStyle(color: AppTheme.textPrimary(context), fontSize: 16),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: AppTheme.inputBorder(context)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            ),
          ),
        ),
      ),
    ];
  }
}