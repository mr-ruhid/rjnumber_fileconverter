import 'dart:ui';

import 'package:flutter/material.dart';

import '../app_theme.dart';

class GlassCard extends StatelessWidget {
  final Widget child;
  final double width;
  final EdgeInsets padding;

  const GlassCard({
    super.key,
    required this.child,
    this.width = AppTheme.cardWidthLarge,
    this.padding = const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: AppTheme.blurMain,
          sigmaY: AppTheme.blurMain,
        ),
        child: Container(
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(AppTheme.opacityMedium),
            borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
            border: Border.all(
              color: Colors.white.withOpacity(AppTheme.opacityStrong),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 30,
                spreadRadius: -5,
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}