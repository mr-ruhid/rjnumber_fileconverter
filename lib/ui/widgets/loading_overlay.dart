import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../app_theme.dart';

class LoadingOverlay extends StatelessWidget {
  final bool isLoading;
  final String title;
  final String subtitle;
  final String animationPath;

  const LoadingOverlay({
    super.key,
    required this.isLoading,
    required this.title,
    required this.subtitle,
    this.animationPath = 'assets/animation/convert.json',
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppTheme.isDark(context);

    return IgnorePointer(
      ignoring: !isLoading,
      child: AnimatedOpacity(
        opacity: isLoading ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
        child: Container(
          color: isDark
              ? Colors.black.withValues(alpha: 0.85)
              : Colors.white.withValues(alpha: 0.85),
          child: Center(
            child: Container(
              width: AppTheme.dialogWidth,
              padding: const EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: AppTheme.loadingOverlayBg(context),
                borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
                border: Border.all(
                  color: isDark
                      ? Colors.white.withValues(alpha: 0.15)
                      : Colors.black.withValues(alpha: 0.1),
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: isDark
                        ? Colors.black.withValues(alpha: 0.6)
                        : Colors.black.withValues(alpha: 0.15),
                    blurRadius: 40,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset(
                    animationPath,
                    width: 140,
                    height: 140,
                    repeat: true,
                    errorBuilder: (context, error, stackTrace) => SizedBox(
                      width: 140,
                      height: 140,
                      child: CircularProgressIndicator(
                        color: AppTheme.textPrimary(context),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppTheme.textPrimary(context),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppTheme.textSecondary(context),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}