import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../ui/app_theme.dart';
import '../ui/theme_provider.dart';
import '../ui/widgets/app_header.dart';
import '../ui/widgets/glass_card.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: AppTheme.backgroundGradient(context)),
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
                        Icon(
                          Icons.settings_rounded,
                          color: AppTheme.textPrimary(context),
                          size: 60,
                        ),
                        const SizedBox(height: AppTheme.spacingLg),
                        Text(
                          l10n.settingsTitle,
                          style: TextStyle(
                            color: AppTheme.textPrimary(context),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppTheme.spacingXl),
                        _buildSectionTitle(context, l10n.settingsTheme),
                        const SizedBox(height: AppTheme.spacingSm),
                        _buildThemeSelector(context, themeProvider),
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

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: AppTheme.textPrimary(context),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildThemeSelector(BuildContext context, ThemeProvider provider) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppTheme.inputFill(context),
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        border: Border.all(color: AppTheme.inputBorder(context)),
      ),
      child: DropdownButton<ThemeMode>(
        value: provider.themeMode,
        isExpanded: true,
        underline: const SizedBox.shrink(),
        dropdownColor: AppTheme.loadingOverlayBg(context),
        style: TextStyle(color: AppTheme.textPrimary(context), fontSize: 15),
        items: [
          DropdownMenuItem(
            value: ThemeMode.dark,
            child: Text(l10n.settingsThemeDark),
          ),
          DropdownMenuItem(
            value: ThemeMode.light,
            child: Text(l10n.settingsThemeLight),
          ),
          DropdownMenuItem(
            value: ThemeMode.system,
            child: Text(l10n.settingsThemeSystem),
          ),
        ],
        onChanged: (value) {
          if (value != null) provider.setThemeMode(value);
        },
      ),
    );
  }
}