import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color gradientTopLeft = Color(0xFF1E3C72);
  static const Color gradientMiddle = Color(0xFF2A5298);
  static const Color gradientBottomRight = Color(0xFF0D0B2B);

  static const Color loadingOverlayBg = Color(0xFF162955);

  static const Color accentAmber = Colors.amberAccent;
  static const Color accentGreen = Colors.greenAccent;
  static const Color accentRed = Colors.redAccent;
  static const Color accentOrange = Colors.orangeAccent;

  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xB3FFFFFF);
  static const Color textMuted = Color(0x80FFFFFF);

  static const double cardWidthLarge = 500;
  static const double cardWidthSmall = 420;
  static const double dialogWidth = 350;

  static const double radiusSmall = 14;
  static const double radiusMedium = 20;
  static const double radiusLarge = 24;

  static const double spacingXs = 8;
  static const double spacingSm = 12;
  static const double spacingMd = 20;
  static const double spacingLg = 30;
  static const double spacingXl = 40;

  static const double blurMain = 15;
  static const double blurDialog = 18;

  static const double opacityLight = 0.08;
  static const double opacityMedium = 0.1;
  static const double opacityStrong = 0.2;

  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [gradientTopLeft, gradientMiddle, gradientBottomRight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}