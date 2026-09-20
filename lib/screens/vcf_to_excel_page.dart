import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

import '../l10n/app_localizations.dart';
import '../services/vcf_to_excel_service.dart';
import '../services/shared/file_utils.dart';
import '../ui/app_theme.dart';
import '../ui/widgets/glass_card.dart';
import '../ui/widgets/loading_overlay.dart';

class VcfToExcelPage extends StatefulWidget {
  const VcfToExcelPage({super.key});

  @override
  State<VcfToExcelPage> createState() => _VcfToExcelPageState();
}

class _VcfToExcelPageState extends State<VcfToExcelPage> {
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
      pickedFile = await FileUtils.pickVcfFile();
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _statusKey = 'vcfToExcelStatusError';
      });
      return;
    }

    if (pickedFile == null) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _statusKey = 'vcfToExcelStatusCancelled';
      });
      return;
    }

    try {
      final bytes = await pickedFile.readAsBytes();
      final content = String.fromCharCodes(bytes);
      final contacts = VcfToExcelService.readContactsFromVcf(content);

      if (contacts.isEmpty) {
        if (!mounted) return;
        setState(() {
          _isLoading = false;
          _statusKey = 'vcfToExcelStatusEmpty';
        });
        return;
      }

      final excelBytes = VcfToExcelService.contactsToExcelBytes(contacts);

      final outputUri = await FileUtils.saveExcelFile(
        excelBytes,
        'Kontaktlar.xlsx',
        l10n.vcfToExcelSaveDialogTitle,
      );

      if (!mounted) return;

      if (outputUri != null) {
        setState(() {
          _isLoading = false;
          _statusKey = 'vcfToExcelStatusSuccess';
        });
      } else {
        setState(() {
          _isLoading = false;
          _statusKey = 'vcfToExcelStatusSaveCancelled';
        });
      }
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _statusKey = 'vcfToExcelStatusError';
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
                  const Icon(Icons.table_chart_rounded, color: Colors.white, size: 80),
                  const SizedBox(height: AppTheme.spacingLg),
                  Text(
                    l10n.vcfToExcelTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppTheme.spacingSm),
                  Text(
                    _statusKey != null ? _getStatusText(l10n, _statusKey!) : l10n.vcfToExcelStatusInitial,
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
                        _isLoading ? l10n.vcfToExcelPleaseWait : l10n.vcfToExcelButton,
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
      case 'vcfToExcelStatusCancelled':
        return l10n.vcfToExcelStatusCancelled;
      case 'vcfToExcelStatusEmpty':
        return l10n.vcfToExcelStatusEmpty;
      case 'vcfToExcelStatusSuccess':
        return l10n.vcfToExcelStatusSuccess;
      case 'vcfToExcelStatusSaveCancelled':
        return l10n.vcfToExcelStatusSaveCancelled;
      case 'vcfToExcelStatusError':
        return l10n.vcfToExcelStatusError;
      default:
        return l10n.vcfToExcelStatusInitial;
    }
  }
}