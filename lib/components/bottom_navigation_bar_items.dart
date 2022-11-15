import 'package:flutter/material.dart';

class BottomNavigationBarItems {
  final Map<Icon, String> _bottomNavigationBarItems = {
    const Icon(Icons.home): '홈',
    const Icon(Icons.assignment): '이용서비스',
    const Icon(Icons.account_box): '내 정보'
  };

  List<BottomNavigationBarItem> setBottomNavigationBarItems() {
    return [
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
    ];
  }
}
