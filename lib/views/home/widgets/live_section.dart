import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/theme/app_colors.dart';

class LiveSection extends StatelessWidget {
  const LiveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.red.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
              TweenAnimationBuilder(
                duration: const Duration(seconds: 2),
                tween: Tween<double>(begin: 0, end: 1),
                curve: Curves.easeOut,
                builder: (context, double value, child) {
                  return Container(
                    width: 12 + (20 * value),
                    height: 12 + (20 * value),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red.withOpacity(1 - value)),
                    ),
                  );
                },
                onEnd: () {},
              ),
            ],
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LIVE PRAYER",
                  style: GoogleFonts.lato(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  "Join our ecosystem prayer",
                  style: GoogleFonts.lato(color: AppColors.gray, fontSize: 12),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text("Join Now", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}