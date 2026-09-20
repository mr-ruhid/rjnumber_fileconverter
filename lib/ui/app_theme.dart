import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _darkGradientTopLeft = Color(0xFF1E3C72);
  static const Color _darkGradientMiddle = Color(0xFF2A5298);
  static const Color _darkGradientBottomRight = Color(0xFF0D0B2B);
  static const Color _darkLoadingOverlayBg = Color(0xFF162955);

  static const Color _lightGradientTopLeft = Color(0xFFE3F2FD);
  static const Color _lightGradientMiddle = Color(0xFFBBDEFB);
  static const Color _lightGradientBottomRight = Color(0xFFF5F5F5);
  static const Color _lightLoadingOverlayBg = Color(0xFFFFFFFF);

  static const Color accentAmber = Colors.amberAccent;
  static const Color accentGreen = Colors.greenAccent;
  static const Color accentRed = Colors.redAccent;
  static const Color accentOrange = Colors.orangeAccent;

  static const Color _primaryDark = Color(0xFF1E3C72);
  static const Color _primaryLight = Colors.white;

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

  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Color gradientTopLeft(BuildContext context) =>
      isDark(context) ? _darkGradientTopLeft : _lightGradientTopLeft;

  static Color gradientMiddle(BuildContext context) =>
      isDark(context) ? _darkGradientMiddle : _lightGradientMiddle;

  static Color gradientBottomRight(BuildContext context) =>
      isDark(context) ? _darkGradientBottomRight : _lightGradientBottomRight;

  static Color loadingOverlayBg(BuildContext context) =>
      isDark(context) ? _darkLoadingOverlayBg : _lightLoadingOverlayBg;

  static LinearGradient backgroundGradient(BuildContext context) => LinearGradient(
    colors: [
      gradientTopLeft(context),
      gradientMiddle(context),
      gradientBottomRight(context),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static Color textPrimary(BuildContext context) =>
      isDark(context) ? Colors.white : const Color(0xFF1A1A1A);

  static Color textSecondary(BuildContext context) => isDark(context)
      ? Colors.white.withOpacity(0.7)
      : const Color(0xFF1A1A1A).withOpacity(0.7);

  static Color textMuted(BuildContext context) => isDark(context)
      ? Colors.white.withOpacity(0.5)
      : const Color(0xFF1A1A1A).withOpacity(0.5);

  static Color glassBg(BuildContext context) => isDark(context)
      ? Colors.white.withOpacity(opacityMedium)
      : Colors.white.withOpacity(0.7);

  static Color glassBorder(BuildContext context) => isDark(context)
      ? Colors.white.withOpacity(opacityStrong)
      : Colors.black.withOpacity(0.1);

  static Color inputFill(BuildContext context) => isDark(context)
      ? Colors.white.withOpacity(0.08)
      : Colors.black.withOpacity(0.05);

  static Color inputBorder(BuildContext context) => isDark(context)
      ? Colors.white.withOpacity(0.25)
      : Colors.black.withOpacity(0.2);

  static Color buttonBackground(BuildContext context) =>
      isDark(context) ? _primaryLight : _primaryDark;

  static Color buttonForeground(BuildContext context) =>
      isDark(context) ? _primaryDark : _primaryLight;
}