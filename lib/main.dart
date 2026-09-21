import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

import 'l10n/app_localizations.dart';
import 'screens/home_page.dart';
import 'screens/licensing_controller.dart';
import 'ui/app_theme.dart';
import 'ui/theme_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeProvider _themeProvider = ThemeProvider();

  @override
  void initState() {
    super.initState();
    _themeProvider.load();
  }

  ThemeData _buildTheme(Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      fontFamily: 'Segoe UI',
      scaffoldBackgroundColor:
      isDark ? const Color(0xFF0D0B2B) : const Color(0xFFF5F5F5),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF1E3C72),
        brightness: brightness,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>.value(
      value: _themeProvider,
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
          return MaterialApp(
            title: 'RJ Number - File Converter',
            debugShowCheckedModeBanner: false,
            theme: _buildTheme(Brightness.light),
            darkTheme: _buildTheme(Brightness.dark),
            themeMode: themeProvider.themeMode,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startUp();
  }

  Future<void> _startUp() async {
    await Future.delayed(const Duration(milliseconds: 2500));
    if (!mounted) return;

    try {
      await windowManager.maximize();
    } catch (e) {
      debugPrint('Window maximize failed: $e');
    }

    if (!mounted) return;

    final licensed = await LicensingController.isLicensed();
    final trialUsed = await LicensingController.hasUsedTrial();

    if (!mounted) return;

    final bool shouldGoToHome = licensed || !trialUsed;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) =>
        shouldGoToHome ? const HomePage() : const LicenseScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppTheme.backgroundGradient(context)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'assets/animation/loading.json',
                width: 180,
                height: 180,
                repeat: true,
                errorBuilder: (context, error, stackTrace) => const SizedBox(
                  width: 180,
                  height: 180,
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                l10n.splashLoading,
                style: TextStyle(
                  color: AppTheme.textPrimary(context),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}