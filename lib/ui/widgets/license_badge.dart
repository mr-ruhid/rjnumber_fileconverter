import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../screens/licensing_controller.dart';
import '../app_theme.dart';

class LicenseBadge extends StatefulWidget {
  const LicenseBadge({super.key});

  @override
  State<LicenseBadge> createState() => _LicenseBadgeState();
}

class _LicenseBadgeState extends State<LicenseBadge> {
  bool _isLicensed = false;

  @override
  void initState() {
    super.initState();
    _check();
  }

  Future<void> _check() async {
    final licensed = await LicensingController.isLicensed();
    if (!mounted) return;
    setState(() => _isLicensed = licensed);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final color = _isLicensed ? AppTheme.accentGreen : AppTheme.accentOrange;
    final text = _isLicensed ? l10n.licenseBadgeActive : l10n.licenseBadgeTrial;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: color.withOpacity(0.4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            _isLicensed
                ? Icons.verified_rounded
                : Icons.hourglass_bottom_rounded,
            color: color,
            size: 16,
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}