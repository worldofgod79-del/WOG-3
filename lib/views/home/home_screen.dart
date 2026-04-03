import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/theme/app_colors.dart';
import 'widgets/daily_verse_card.dart';
import 'widgets/live_section.dart';
import 'widgets/notification_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "WORLD OF GOD",
          style: GoogleFonts.cinzel(color: AppColors.liteYellow, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 100), // Bottom padding for navigation bar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DailyVerseCard(),
            const SizedBox(height: 25),
            const LiveSection(),
            const SizedBox(height: 25),
            Text(
              "Recent Updates",
              style: GoogleFonts.lato(
                color: AppColors.liteYellow, 
                fontSize: 16, 
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2
              ),
            ),
            const SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) => const NotificationTile(),
            ),
          ],
        ),
      ),
    );
  }
}