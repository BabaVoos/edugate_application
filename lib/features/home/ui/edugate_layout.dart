import 'package:edugate_applocation/features/help/ui/help_screen.dart';
import 'package:edugate_applocation/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'widgets/application_app_bar.dart';
import 'widgets/buildBottomNavigationAppBar.dart';

class EdugateLayout extends StatefulWidget {
  const EdugateLayout({super.key});

  @override
  State<EdugateLayout> createState() => _EdugateLayoutState();
}

class _EdugateLayoutState extends State<EdugateLayout> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const HelpScreen(),
  ];

  List<String> titles = [
    'Home',
    'Profile',
    'Help',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildApplicationAppBar(
        title: titles[currentIndex],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: buildBottomNavigationAppBar(
        currentIndex: currentIndex,
        onTap: (index) {
          onTap(index);
        },
      ),
    );
  }
}
