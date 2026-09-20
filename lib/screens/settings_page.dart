import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../ui/app_theme.dart';
import '../ui/widgets/app_header.dart';
import '../ui/widgets/glass_card.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
          ),
          Column(
            children: [
              const AppHeader(showBackButton: true),
              Expanded(
                child: Center(
                  child: GlassCard(
                    width: AppTheme.cardWidthSmall,
                    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 44),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.settings_rounded, color: Colors.white, size: 60),
                        const SizedBox(height: AppTheme.spacingLg),
                        Text(
                          l10n.settingsTitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppTheme.spacingXl),
                        Text(
                          l10n.settingsLanguage,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: AppTheme.spacingSm),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.08),
                            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                            border: Border.all(color: Colors.white.withOpacity(0.2)),
                          ),
                          child: DropdownButton<String>(
                            value: 'en',
                            isExpanded: true,
                            underline: const SizedBox.shrink(),
                            dropdownColor: AppTheme.loadingOverlayBg,
                            style: const TextStyle(color: Colors.white, fontSize: 15),
                            items: const [
                              DropdownMenuItem(value: 'en', child: Text('English')),
                            ],
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}