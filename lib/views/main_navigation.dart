import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../core/theme/app_colors.dart';
import 'home/home_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 2;

  final List<Widget> _screens = [
    const Center(child: Text("Bible", style: TextStyle(color: Colors.white))),
    const Center(child: Text("Songs", style: TextStyle(color: Colors.white))),
    const HomeScreen(),
    const Center(child: Text("Books", style: TextStyle(color: Colors.white))),
    const Center(child: Text("Project H", style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // బాటమ్ బార్ కింద కంటెంట్ కనిపించడానికి
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.all(20), // Floating look
        decoration: BoxDecoration(
          color: AppColors.darkViolet.withOpacity(0.9),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Iconsax.book, 0),
            _buildNavItem(Iconsax.music, 1),
            _buildNavItem(Iconsax.home, 2),
            _buildNavItem(Iconsax.document, 3),
            _buildNavItem(Iconsax.heart, 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.liteYellow.withOpacity(0.1) : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: isSelected ? AppColors.liteYellow : AppColors.gray,
          size: isSelected ? 28 : 24,
        ),
      ),
    );
  }
}