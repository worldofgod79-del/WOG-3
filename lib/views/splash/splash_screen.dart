import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/theme/app_colors.dart';
import '../main_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  _startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const MainNavigation(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Interstellar expansion effect without wrapping
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 4000),
              tween: Tween<double>(begin: 0, end: 12), // Spacing reduced to fit
              builder: (context, double value, child) {
                return FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "WORLD OF GOD",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cinzel(
                        color: AppColors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w200,
                        letterSpacing: value, 
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 4500),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Text(
                    "ECO SYSTEM",
                    style: GoogleFonts.lato(
                      color: AppColors.liteYellow.withOpacity(0.4),
                      fontSize: 10,
                      letterSpacing: 4,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}