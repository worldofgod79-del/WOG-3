import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../core/theme/app_colors.dart';

// ప్రస్తుతానికి ఇవి ఖాళీ స్క్రీన్లు, తర్వాత వీటిలో కోడ్ రాస్తాం
class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 2; // Default గా Home (మధ్యలోది) సెలెక్ట్ అయి ఉంటుంది

  final List<Widget> _screens = [
    const Center(child: Text("Bible", style: TextStyle(color: Colors.white))),
    const Center(child: Text("Songs", style: TextStyle(color: Colors.white))),
    const Center(child: Text("Home", style: TextStyle(color: Colors.white))),
    const Center(child: Text("Books", style: TextStyle(color: Colors.white))),
    const Center(child: Text("Project H", style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.darkViolet,
        selectedItemColor: AppColors.liteYellow,
        unselectedItemColor: AppColors.gray,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.book), label: "Bible"),
          BottomNavigationBarItem(icon: Icon(Iconsax.music), label: "Songs"),
          BottomNavigationBarItem(icon: Icon(Iconsax.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Iconsax.document), label: "Books"),
          BottomNavigationBarItem(icon: Icon(Iconsax.heart), label: "Project H"),
        ],
      ),
    );
  }
}