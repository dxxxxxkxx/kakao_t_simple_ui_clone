import 'package:flutter/material.dart';

import '../components/bottom_navigation_bar_items.dart';
import '../components/my_app_bar.dart';
import 'home_screen.dart';
import 'information_screen.dart';
import 'services_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    const ServicesScreen(),
    const InformationScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: BottomNavigationBarItems().setBottomNavigationBarItems(),
      ),
    );
  }
}
