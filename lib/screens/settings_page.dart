import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../services/converter_service.dart';
import '../services/settings_service.dart';
import '../ui/app_theme.dart';
import '../ui/theme_provider.dart';
import '../ui/widgets/app_header.dart';
import '../ui/widgets/glass_card.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final TextEditingController _fileNameController = TextEditingController();
  String _vcfVersion = ConverterService.vcfVersion3;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final fileName = await SettingsService.getDefaultFileName();
    final vcfVersion = await SettingsService.getVcfVersion();

    if (!mounted) return;

    setState(() {
      _fileNameController.text = fileName;
      _vcfVersion = vcfVersion;
      _isLoading = false;
    });
  }

  Future<void> _saveFileName(String value) async {
    await SettingsService.setDefaultFileName(value);
  }

  Future<void> _saveVcfVersion(String version) async {
    await SettingsService.setVcfVersion(version);
  }

  @override
  void dispose() {
    _fileNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
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
                child: SingleChildScrollView(
                  child: Center(
                    child: GlassCard(
                      width: AppTheme.cardWidthSmall,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36, vertical: 44),
                      child: _isLoading
                          ? const Center(
                        child: CircularProgressIndicator(),
                      )
                          : Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Icon(
                            Icons.settings_rounded,
                            color: AppTheme.textPrimary(context),
                            size: 60,
                          ),
                          const SizedBox(height: AppTheme.spacingLg),
                          Text(
                            l10n.settingsTitle,
                            textAlign: TextAlign.center,
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

                          const SizedBox(height: AppTheme.spacingLg),

                          _buildSectionTitle(
                              context, l10n.settingsDefaultFileName),
                          const SizedBox(height: AppTheme.spacingSm),
                          _buildFileNameField(context, l10n),

                          const SizedBox(height: AppTheme.spacingLg),

                          _buildSectionTitle(
                              context, l10n.settingsVcfVersion),
                          const SizedBox(height: AppTheme.spacingSm),
                          _buildVcfVersionSelector(context, l10n),
                        ],
                      ),
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
    final l10n = AppLocalizations.of(context);

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

  Widget _buildFileNameField(BuildContext context, AppLocalizations l10n) {
    return TextField(
      controller: _fileNameController,
      style: TextStyle(color: AppTheme.textPrimary(context), fontSize: 15),
      decoration: InputDecoration(
        hintText: l10n.settingsDefaultFileNameHint,
        hintStyle: TextStyle(color: AppTheme.textMuted(context)),
        filled: true,
        fillColor: AppTheme.inputFill(context),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
          borderSide: BorderSide(color: AppTheme.inputBorder(context)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
          borderSide: BorderSide(color: AppTheme.inputBorder(context)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
          borderSide: BorderSide(color: AppTheme.textPrimary(context), width: 1.5),
        ),
      ),
      onChanged: _saveFileName,
    );
  }

  Widget _buildVcfVersionSelector(
      BuildContext context, AppLocalizations l10n) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppTheme.inputFill(context),
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        border: Border.all(color: AppTheme.inputBorder(context)),
      ),
      child: DropdownButton<String>(
        value: _vcfVersion,
        isExpanded: true,
        underline: const SizedBox.shrink(),
        dropdownColor: AppTheme.loadingOverlayBg(context),
        style: TextStyle(color: AppTheme.textPrimary(context), fontSize: 15),
        items: [
          DropdownMenuItem(
            value: ConverterService.vcfVersion3,
            child: Text(l10n.settingsVcfVersion3),
          ),
          DropdownMenuItem(
            value: ConverterService.vcfVersion4,
            child: Text(l10n.settingsVcfVersion4),
          ),
        ],
        onChanged: (value) {
          if (value == null) return;
          setState(() => _vcfVersion = value);
          _saveVcfVersion(value);
        },
      ),
    );
  }
}