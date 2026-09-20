import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../screens/about_dialog.dart';
import '../../screens/settings_page.dart';
import '../app_theme.dart';
import 'license_badge.dart';
import 'window_controls.dart';

class AppHeader extends StatelessWidget {
  final bool showBackButton;

  const AppHeader({
    super.key,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = AppTheme.textPrimary(context);

    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          if (showBackButton)
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_rounded, color: textColor),
            ),
          SvgPicture.asset(
            'assets/logo/logo.svg',
            height: 40,
            placeholderBuilder: (context) =>
                Icon(Icons.api_rounded, color: textColor, size: 40),
          ),
          const Spacer(),
          const LicenseBadge(),
          const SizedBox(width: 12),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => const AboutDialogContent(),
              );
            },
            icon: Icon(Icons.help_outline_rounded, color: textColor),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const SettingsPage()),
              );
            },
            icon: Icon(Icons.settings_rounded, color: textColor),
          ),
          const SizedBox(width: 8),
          const WindowControls(),
        ],
      ),
    );
  }
}