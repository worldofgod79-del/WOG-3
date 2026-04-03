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
    // 5 సెకన్ల తర్వాత హోమ్ స్క్రీన్ కి వెళ్తుంది
    await Future.delayed(const Duration(milliseconds: 5500));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainNavigation()),
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
            // "WORLD OF GOD" Animation
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 4000),
              tween: Tween<double>(begin: 2, end: 18), // అక్షరాల మధ్య దూరం పెరుగుతుంది
              builder: (context, double value, child) {
                return Opacity(
                  opacity: (value / 18).clamp(0.0, 1.0), // మెల్లిగా కనిపిస్తుంది
                  child: Text(
                    "WORLD OF GOD",
                    style: GoogleFonts.cinzel(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w200,
                      letterSpacing: value, 
                    ),
                  ),
                );
              },
            ),
            
            const SizedBox(height: 20),

            // "ECO SYSTEM" Subtitle Animation
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 5000),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, double value, child) {
                return Opacity(
                  opacity: value,
                  child: Text(
                    "ECO SYSTEM",
                    style: GoogleFonts.lato(
                      color: AppColors.liteYellow.withOpacity(0.5),
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