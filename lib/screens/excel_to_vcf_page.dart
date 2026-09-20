import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import '../l10n/app_localizations.dart';
import '../services/excel_to_vcf_service.dart';
import '../services/shared/file_utils.dart';
import '../ui/app_theme.dart';
import '../ui/widgets/glass_card.dart';
import '../ui/widgets/loading_overlay.dart';

class ExcelToVcfPage extends StatefulWidget {
  const ExcelToVcfPage({super.key});

  @override
  State<ExcelToVcfPage> createState() => _ExcelToVcfPageState();
}

class _ExcelToVcfPageState extends State<ExcelToVcfPage> {
  String? _statusKey;
  bool _isLoading = false;

  Future<void> _pickAndConvert() async {
    final l10n = AppLocalizations.of(context)!;

    setState(() {
      _isLoading = true;
      _statusKey = null;
    });

    PlatformFile? pickedFile;
    try {
      pickedFile = await FileUtils.pickExcelFile();
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _statusKey = 'excelToVcfStatusError';
      });
      return;
    }

    if (pickedFile == null) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _statusKey = 'excelToVcfStatusCancelled';
      });
      return;
    }

    try {
      final bytes = await pickedFile.readAsBytes();
      final contacts = ExcelToVcfService.readContactsFromExcel(bytes);

      if (contacts.isEmpty) {
        if (!mounted) return;
        setState(() {
          _isLoading = false;
          _statusKey = 'excelToVcfStatusEmpty';
        });
        return;
      }

      final vcfContent = ExcelToVcfService.contactsToVcf(contacts);

      final outputUri = await FileUtils.saveVcfFile(
        vcfContent,
        'Kontaktlar.vcf',
        l10n.excelToVcfSaveDialogTitle,
      );

      if (!mounted) return;

      if (outputUri != null) {
        setState(() {
          _isLoading = false;
          _statusKey = 'excelToVcfStatusSuccess';
        });
      } else {
        setState(() {
          _isLoading = false;
          _statusKey = 'excelToVcfStatusSaveCancelled';
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _statusKey = 'excelToVcfStatusError';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: Stack(
        children: [
          Container(decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient)),
          Center(
            child: GlassCard(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.contact_phone_rounded, color: Colors.white, size: 80),
                  const SizedBox(height: AppTheme.spacingLg),
                  Text(
                    l10n.excelToVcfTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppTheme.spacingSm),
                  Text(
                    _statusKey != null ? _getStatusText(l10n, _statusKey!) : l10n.excelToVcfStatusInitial,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: AppTheme.spacingXl),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: _isLoading ? null : _pickAndConvert,
                      icon: _isLoading
                          ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          color: AppTheme.gradientTopLeft,
                          strokeWidth: 2.5,
                        ),
                      )
                          : const Icon(Icons.upload_file_rounded, color: AppTheme.gradientTopLeft),
                      label: Text(
                        _isLoading ? l10n.excelToVcfPleaseWait : l10n.excelToVcfButton,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.gradientTopLeft,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          LoadingOverlay(
            isLoading: _isLoading,
            title: l10n.processingTitle,
            subtitle: l10n.processingSubtitle,
          ),
        ],
      ),
    );
  }

  String _getStatusText(AppLocalizations l10n, String key) {
    switch (key) {
      case 'excelToVcfStatusCancelled':
        return l10n.excelToVcfStatusCancelled;
      case 'excelToVcfStatusEmpty':
        return l10n.excelToVcfStatusEmpty;
      case 'excelToVcfStatusSuccess':
        return l10n.excelToVcfStatusSuccess;
      case 'excelToVcfStatusSaveCancelled':
        return l10n.excelToVcfStatusSaveCancelled;
      case 'excelToVcfStatusError':
        return l10n.excelToVcfStatusError;
      default:
        return l10n.excelToVcfStatusInitial;
    }
  }
}