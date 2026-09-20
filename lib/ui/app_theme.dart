import 'package:flutter/material.dart';

/// Tətbiqin dizayn sistemi — rənglər, ölçülər, effektlər.
///
/// Bütün UI faylları buradan istifadə edir.
/// Rəngi dəyişmək istəsək, yalnız bu faylı düzəldirik.
class AppTheme {
  AppTheme._(); // Bu sinif instantiate edilməməlidir

  // ═══════════════════════════════════════════════════════
  // RƏNGLƏR
  // ═══════════════════════════════════════════════════════

  /// Əsas gradient rəngləri (arxa plan üçün)
  static const Color gradientTopLeft = Color(0xFF1E3C72);
  static const Color gradientMiddle = Color(0xFF2A5298);
  static const Color gradientBottomRight = Color(0xFF0D0B2B);

  /// Overlay / loading fon rəngi
  static const Color loadingOverlayBg = Color(0xFF162955);

  /// Vurğu rəngləri
  static const Color accentAmber = Colors.amberAccent;
  static const Color accentGreen = Colors.greenAccent;
  static const Color accentRed = Colors.redAccent;
  static const Color accentOrange = Colors.orangeAccent;

  /// Mətn rəngləri
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Color(0xB3FFFFFF); // white 70%
  static const Color textMuted = Color(0x80FFFFFF); // white 50%

  // ═══════════════════════════════════════════════════════
  // ÖLÇÜLƏR
  // ═══════════════════════════════════════════════════════

  /// Kart / panel eni
  static const double cardWidthLarge = 500;
  static const double cardWidthSmall = 420;
  static const double dialogWidth = 350;

  /// Radius (künc yumşaqlığı)
  static const double radiusSmall = 14;
  static const double radiusMedium = 20;
  static const double radiusLarge = 24;

  /// Padding
  static const EdgeInsets cardPadding =
  EdgeInsets.symmetric(horizontal: 40, vertical: 50);
  static const EdgeInsets dialogPadding = EdgeInsets.all(35);
  static const EdgeInsets screenPadding =
  EdgeInsets.symmetric(horizontal: 36, vertical: 44);

  /// Boşluq
  static const double spacingXs = 8;
  static const double spacingSm = 12;
  static const double spacingMd = 20;
  static const double spacingLg = 30;
  static const double spacingXl = 40;

  // ═══════════════════════════════════════════════════════
  // EFFEKTLƏR
  // ═══════════════════════════════════════════════════════

  /// Arxa plan blur miqdarı (glassmorphism)
  static const double blurMain = 15;
  static const double blurDialog = 18;

  /// Şəffaflıq dəyərləri
  static const double opacityLight = 0.08;
  static const double opacityMedium = 0.1;
  static const double opacityStrong = 0.2;

  // ═══════════════════════════════════════════════════════
  // HAZIR WIDGET-LƏR (köhnə kodda təkrarlananlar)
  // ═══════════════════════════════════════════════════════

  /// Əsas gradient arxa plan (hər səhifədə istifadə olunur)
  static BoxDecoration get backgroundGradient => const BoxDecoration(
    gradient: LinearGradient(
      colors: [gradientTopLeft, gradientMiddle, gradientBottomRight],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  /// Şüşə effektli kart (glassmorphism)
  static BoxDecoration get glassCard => BoxDecoration(
    color: Colors.white.withOpacity(opacityMedium),
    borderRadius: BorderRadius.circular(radiusLarge),
    border: Border.all(
      color: Colors.white.withOpacity(opacityStrong),
      width: 1.5,
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 30,
        spreadRadius: -5,
      ),
    ],
  );

  /// Yükləmə overlay kartı
  static BoxDecoration get loadingCard => BoxDecoration(
    color: loadingOverlayBg,
    borderRadius: BorderRadius.circular(radiusLarge),
    border: Border.all(
      color: Colors.white.withOpacity(0.15),
      width: 1.5,
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.6),
        blurRadius: 40,
        spreadRadius: 10,
      ),
    ],
  );
}