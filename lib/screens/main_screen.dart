import 'package:flutter/material.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Map<Icon, String> _bottomNavigationBarItems = {
    const Icon(Icons.home): '홈',
    const Icon(Icons.assignment): '이용서비스',
    const Icon(Icons.account_box): '내 정보'
  };
  final List<Widget> _screens = [];

  int _selectedIndex = 0;

  _MainScreenState() {
    _screens.add(HomeScreen());
    _screens.add(
      Center(child: Text(_bottomNavigationBarItems.values.elementAt(1))),
    );
    _screens.add(
      Center(child: Text(_bottomNavigationBarItems.values.elementAt(2))),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Kakao T',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _bottomNavigationBarItems.keys.elementAt(0),
            label: _bottomNavigationBarItems.values.elementAt(0),
          ),
          BottomNavigationBarItem(
            icon: _bottomNavigationBarItems.keys.elementAt(1),
            label: _bottomNavigationBarItems.values.elementAt(1),
          ),
          BottomNavigationBarItem(
            icon: _bottomNavigationBarItems.keys.elementAt(2),
            label: _bottomNavigationBarItems.values.elementAt(2),
          )
        ],
      ),
    );
  }
}
