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
    return IgnorePointer(
      ignoring: !isLoading,
      child: AnimatedOpacity(
        opacity: isLoading ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeIn,
        child: Container(
          color: Colors.black.withOpacity(0.85),
          child: Center(
            child: Container(
              width: AppTheme.dialogWidth,
              padding: const EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: AppTheme.loadingOverlayBg,
                borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
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
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset(
                    animationPath,
                    width: 140,
                    height: 140,
                    repeat: true,
                    errorBuilder: (context, error, stackTrace) =>
                    const SizedBox(
                      width: 140,
                      height: 140,
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
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