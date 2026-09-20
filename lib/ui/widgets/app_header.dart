
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../screens/settings_page.dart';
import '../../screens/about_dialog.dart';
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
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          if (showBackButton)
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
              tooltip: 'Back',
            ),
          SvgPicture.asset(
            'assets/logo/logo.svg',
            height: 40,
            placeholderBuilder: (context) =>
            const Icon(Icons.api_rounded, color: Colors.white, size: 40),
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
            icon: const Icon(Icons.help_outline_rounded, color: Colors.white),
            tooltip: 'About',
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const SettingsPage()),
              );
            },
            icon: const Icon(Icons.settings_rounded, color: Colors.white),
            tooltip: 'Settings',
          ),
          const SizedBox(width: 8),
          const WindowControls(),
        ],
      ),
    );
  }
}