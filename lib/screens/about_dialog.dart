import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../l10n/app_localizations.dart';
import '../ui/app_theme.dart';

class AboutDialogContent extends StatelessWidget {
  const AboutDialogContent({super.key});

  Future<void> _launchUrl(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  Future<void> _showWebsiteChoice(BuildContext context) async {
    final l10n = AppLocalizations.of(context);
    final isDark = AppTheme.isDark(context);

    await showDialog(
      context: context,
      builder: (dialogContext) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: 340,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppTheme.loadingOverlayBg(context),
            borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.15)
                  : Colors.black.withValues(alpha: 0.1),
              width: 1.5,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icon/web.svg',
                width: 48,
                height: 48,
                colorFilter: ColorFilter.mode(
                  AppTheme.textPrimary(context),
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Website',
                style: TextStyle(
                  color: AppTheme.textPrimary(context),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              _websiteOption(
                context,
                dialogContext,
                label: 'ruhidjavadov.site',
                url: 'https://ruhidjavadov.site',
              ),
              const SizedBox(height: 12),
              _websiteOption(
                context,
                dialogContext,
                label: 'ruhidjavadoff.site',
                url: 'https://ruhidjavadoff.site',
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 42,
                child: ElevatedButton(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.buttonBackground(context),
                    foregroundColor: AppTheme.buttonForeground(context),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                    ),
                  ),
                  child: Text(l10n.aboutClose),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _websiteOption(
      BuildContext context,
      BuildContext dialogContext, {
        required String label,
        required String url,
      }) {
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: OutlinedButton.icon(
        onPressed: () {
          Navigator.of(dialogContext).pop();
          _launchUrl(url);
        },
        icon: Icon(
          Icons.open_in_new_rounded,
          size: 16,
          color: AppTheme.textPrimary(context),
        ),
        label: Text(
          label,
          style: TextStyle(
            color: AppTheme.textPrimary(context),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: AppTheme.inputBorder(context)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
          ),
        ),
      ),
    );
  }

  Widget _socialButton(BuildContext context, String asset, String url) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _launchUrl(url),
        child: Container(
          width: 46,
          height: 46,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppTheme.inputFill(context),
            borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
            border: Border.all(color: AppTheme.inputBorder(context)),
          ),
          child: SvgPicture.asset(
            asset,
            colorFilter: ColorFilter.mode(
              AppTheme.textPrimary(context),
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isDark = AppTheme.isDark(context);
    final buttonBg = AppTheme.buttonBackground(context);
    final buttonFg = AppTheme.buttonForeground(context);

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 420,
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: AppTheme.loadingOverlayBg(context),
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          border: Border.all(
            color: isDark
                ? Colors.white.withValues(alpha: 0.15)
                : Colors.black.withValues(alpha: 0.1),
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info_outline_rounded,
              color: AppTheme.textPrimary(context),
              size: 60,
            ),
            const SizedBox(height: 20),
            Text(
              l10n.appTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppTheme.textPrimary(context),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              l10n.aboutDescription,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppTheme.textSecondary(context),
                fontSize: 14,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                _socialButton(
                  context,
                  'assets/icon/github.svg',
                  'https://github.com/mr-ruhid',
                ),
                _socialButton(
                  context,
                  'assets/icon/gitlab.svg',
                  'https://gitlab.com/ruhidjavadoff',
                ),
                _socialButton(
                  context,
                  'assets/icon/youtube.svg',
                  'https://www.youtube.com/@ruhidjavadoff',
                ),
                _socialButton(
                  context,
                  'assets/icon/discord.svg',
                  'https://discord.gg/ranTDmM6p',
                ),
                _socialButton(
                  context,
                  'assets/icon/blogger.svg',
                  'https://ruhidjavadoff.blogspot.com',
                ),
              ],
            ),
            const SizedBox(height: 14),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => _showWebsiteChoice(context),
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
                  decoration: BoxDecoration(
                    color: AppTheme.inputFill(context),
                    borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                    border: Border.all(color: AppTheme.inputBorder(context)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icon/web.svg',
                        width: 18,
                        height: 18,
                        colorFilter: ColorFilter.mode(
                          AppTheme.textPrimary(context),
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Website',
                        style: TextStyle(
                          color: AppTheme.textPrimary(context),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: AppTheme.textSecondary(context),
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              l10n.homeFooter,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppTheme.textSecondary(context),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonBg,
                  foregroundColor: buttonFg,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                  ),
                ),
                child: Text(
                  l10n.aboutClose,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: buttonFg,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}