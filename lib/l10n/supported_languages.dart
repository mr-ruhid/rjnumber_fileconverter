
import 'package:flutter/material.dart';

class SupportedLanguage {
  final String code;
  final String nativeName;
  final String englishName;

  const SupportedLanguage({
    required this.code,
    required this.nativeName,
    required this.englishName,
  });

  Locale get locale => Locale(code);
}

class SupportedLanguages {
  SupportedLanguages._();

  static const List<SupportedLanguage> all = [
    SupportedLanguage(code: 'az', nativeName: 'Azərbaycan dili', englishName: 'Azerbaijani'),
    SupportedLanguage(code: 'en', nativeName: 'English', englishName: 'English'),
    SupportedLanguage(code: 'tr', nativeName: 'Türkçe', englishName: 'Turkish'),
    SupportedLanguage(code: 'ru', nativeName: 'Русский', englishName: 'Russian'),
    SupportedLanguage(code: 'ar', nativeName: 'العربية', englishName: 'Arabic'),
    SupportedLanguage(code: 'fa', nativeName: 'فارسی', englishName: 'Persian'),
    SupportedLanguage(code: 'he', nativeName: 'עברית', englishName: 'Hebrew'),
    SupportedLanguage(code: 'ur', nativeName: 'اردو', englishName: 'Urdu'),
    SupportedLanguage(code: 'de', nativeName: 'Deutsch', englishName: 'German'),
    SupportedLanguage(code: 'fr', nativeName: 'Français', englishName: 'French'),
    SupportedLanguage(code: 'es', nativeName: 'Español', englishName: 'Spanish'),
    SupportedLanguage(code: 'it', nativeName: 'Italiano', englishName: 'Italian'),
    SupportedLanguage(code: 'pt', nativeName: 'Português', englishName: 'Portuguese'),
    SupportedLanguage(code: 'nl', nativeName: 'Nederlands', englishName: 'Dutch'),
    SupportedLanguage(code: 'ro', nativeName: 'Română', englishName: 'Romanian'),
    SupportedLanguage(code: 'hy', nativeName: 'Հայերեն', englishName: 'Armenian'),
    SupportedLanguage(code: 'ka', nativeName: 'ქართული', englishName: 'Georgian'),
    SupportedLanguage(code: 'hi', nativeName: 'हिन्दी', englishName: 'Hindi'),
    SupportedLanguage(code: 'bn', nativeName: 'বাংলা', englishName: 'Bengali'),
    SupportedLanguage(code: 'pa', nativeName: 'ਪੰਜਾਬੀ', englishName: 'Punjabi'),
    SupportedLanguage(code: 'ta', nativeName: 'தமிழ்', englishName: 'Tamil'),
    SupportedLanguage(code: 'te', nativeName: 'తెలుగు', englishName: 'Telugu'),
    SupportedLanguage(code: 'mr', nativeName: 'मराठी', englishName: 'Marathi'),
    SupportedLanguage(code: 'zh', nativeName: '中文', englishName: 'Chinese'),
    SupportedLanguage(code: 'ja', nativeName: '日本語', englishName: 'Japanese'),
    SupportedLanguage(code: 'ko', nativeName: '한국어', englishName: 'Korean'),
    SupportedLanguage(code: 'th', nativeName: 'ไทย', englishName: 'Thai'),
    SupportedLanguage(code: 'vi', nativeName: 'Tiếng Việt', englishName: 'Vietnamese'),
    SupportedLanguage(code: 'id', nativeName: 'Bahasa Indonesia', englishName: 'Indonesian'),
    SupportedLanguage(code: 'ms', nativeName: 'Bahasa Melayu', englishName: 'Malay'),
    SupportedLanguage(code: 'jv', nativeName: 'Basa Jawa', englishName: 'Javanese'),
    SupportedLanguage(code: 'tl', nativeName: 'Tagalog', englishName: 'Tagalog'),
    SupportedLanguage(code: 'sw', nativeName: 'Kiswahili', englishName: 'Swahili'),
    SupportedLanguage(code: 'ha', nativeName: 'Hausa', englishName: 'Hausa'),
  ];

  static SupportedLanguage? findByCode(String? code) {
    if (code == null) return null;
    for (final lang in all) {
      if (lang.code == code) return lang;
    }
    return null;
  }
}