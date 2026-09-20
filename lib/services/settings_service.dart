import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  SettingsService._();

  static const String _keyThemeMode = 'settings_theme_mode';
  static const String _keyVcfVersion = 'settings_vcf_version';
  static const String _keyDefaultFileName = 'settings_default_file_name';

  static const String defaultFileName = 'Kontaktlar';

  static Future<ThemeMode> getThemeMode() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final value = prefs.getString(_keyThemeMode) ?? 'dark';
      switch (value) {
        case 'light':
          return ThemeMode.light;
        case 'system':
          return ThemeMode.system;
        default:
          return ThemeMode.dark;
      }
    } catch (e) {
      debugPrint('Theme mode read error: $e');
      return ThemeMode.dark;
    }
  }

  static Future<void> setThemeMode(ThemeMode mode) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final value = mode == ThemeMode.light
          ? 'light'
          : mode == ThemeMode.system
          ? 'system'
          : 'dark';
      await prefs.setString(_keyThemeMode, value);
    } catch (e) {
      debugPrint('Theme mode write error: $e');
    }
  }

  static Future<String> getVcfVersion() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(_keyVcfVersion) ?? '3.0';
    } catch (e) {
      debugPrint('VCF version read error: $e');
      return '3.0';
    }
  }

  static Future<void> setVcfVersion(String version) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keyVcfVersion, version);
    } catch (e) {
      debugPrint('VCF version write error: $e');
    }
  }

  static Future<String> getDefaultFileName() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final value = prefs.getString(_keyDefaultFileName);
      if (value == null || value.trim().isEmpty) return defaultFileName;
      return value;
    } catch (e) {
      debugPrint('Default file name read error: $e');
      return defaultFileName;
    }
  }

  static Future<void> setDefaultFileName(String name) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final trimmed = name.trim();
      if (trimmed.isEmpty) {
        await prefs.remove(_keyDefaultFileName);
      } else {
        await prefs.setString(_keyDefaultFileName, trimmed);
      }
    } catch (e) {
      debugPrint('Default file name write error: $e');
    }
  }
}