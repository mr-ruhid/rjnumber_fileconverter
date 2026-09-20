import 'package:flutter/material.dart';

import '../services/settings_service.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;
  bool _isLoaded = false;

  ThemeMode get themeMode => _themeMode;
  bool get isLoaded => _isLoaded;

  Future<void> load() async {
    _themeMode = await SettingsService.getThemeMode();
    _isLoaded = true;
    notifyListeners();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    if (_themeMode == mode) return;
    _themeMode = mode;
    notifyListeners();
    await SettingsService.setThemeMode(mode);
  }

  void toggleTheme() {
    final next = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    setThemeMode(next);
  }
}