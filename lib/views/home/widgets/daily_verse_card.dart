import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/theme/app_colors.dart';

class DailyVerseCard extends StatelessWidget {
  const DailyVerseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.darkViolet,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: AppColors.liteYellow.withOpacity(0.2)),
        boxShadow: [
          BoxShadow(
            color: AppColors.liteYellow.withOpacity(0.05),
            blurRadius: 20,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.format_quote, color: AppColors.liteYellow.withOpacity(0.5)),
              const SizedBox(width: 8),
              Text(
                "DAILY VERSE",
                style: GoogleFonts.lato(
                  color: AppColors.liteYellow,
                  letterSpacing: 2,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            "\"యెహోవా నా కాపరి, నాకు లేమి కలుగదు.\"",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSansTelugu(
              color: AppColors.white,
              fontSize: 20,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "- కీర్తనలు 23:1",
            style: GoogleFonts.lato(
              color: AppColors.liteYellow.withOpacity(0.8),
              fontSize: 14,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}