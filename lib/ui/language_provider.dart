import 'package:flutter/material.dart';

import '../l10n/supported_languages.dart';
import '../services/settings_service.dart';

class LanguageProvider extends ChangeNotifier {
  Locale? _locale;
  bool _isLoaded = false;

  Locale? get locale => _locale;
  bool get isLoaded => _isLoaded;

  Future<void> load() async {
    _locale = await SettingsService.getLocale();
    _isLoaded = true;
    notifyListeners();
  }

  Future<void> setLocale(Locale? locale) async {
    if (_locale == locale) return;
    _locale = locale;
    notifyListeners();
    await SettingsService.setLocale(locale);
  }

  SupportedLanguage? get currentLanguage {
    if (_locale == null) return null;
    return SupportedLanguages.findByCode(_locale!.languageCode);
  }
}