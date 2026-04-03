import 'package:flutter/material.dart';
import 'core/theme/app_colors.dart';
import 'views/splash/splash_screen.dart';

void main() {
  runApp(const GospelApp());
}

class GospelApp extends StatelessWidget {
  const GospelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'World of God',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.darkViolet,
        scaffoldBackgroundColor: AppColors.black,
      ),
      home: const SplashScreen(), // యాప్ ఇక్కడి నుంచి స్టార్ట్ అవుతుంది
    );
  }
}