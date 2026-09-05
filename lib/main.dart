import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:window_manager/window_manager.dart';

import 'converter_page.dart';
import 'licensing_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Masaüstü pəncərə idarəçisini işə salırıq (tam ekran keçidi üçün lazımdır).
  await windowManager.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excel to VCF Converter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Segoe UI',
      ),
      home: const SplashScreen(),
    );
  }
}

/// Proqram birbaşa açılmır — əvvəlcə bu ekran göstərilir (loading.json),
/// sonra keşlənmiş lisenziya və sınaq statusuna görə səhifəyə keçid olunur.
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
    // Splash ekranının görünmə müddəti
    await Future.delayed(const Duration(milliseconds: 2500));
    if (!mounted) return;

    // Pəncərəni tam ekran (maximized) et
    try {
      await windowManager.maximize();
    } catch (e) {
      debugPrint("Pəncərəni tam ekran etmək mümkün olmadı: $e");
    }

    if (!mounted) return;

    // Keşdə lisenziyanın aktiv olub-olmadığını və sınaq limitini yoxlayırıq.
    final licensed = await LicensingController.isLicensed();
    final trialUsed = await LicensingController.hasUsedTrial();

    if (!mounted) return;

    // Əgər lisenziya varSA və ya lisenziya yoxdur amma hələ trial istifadə EDİLMƏYİBSƏ, Əsas səhifəyə get.
    // Əks halda (lisenziya yoxdur və trial artıq istifadə edilib), Lisenziya səhifəsinə get.
    bool shouldGoToConverter = licensed || !trialUsed;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => shouldGoToConverter ? const ConverterPage() : const LicenseScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1E3C72), Color(0xFF2A5298), Color(0xFF0D0B2B)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
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
              const Text(
                "Yüklənir...",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}