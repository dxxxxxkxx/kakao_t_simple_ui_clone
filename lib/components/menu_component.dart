import 'package:flutter/material.dart';

class MenuComponent {
  final Map<IconData, String> _menus = {
    Icons.local_taxi_outlined: '택시',
    Icons.local_taxi: '블랙',
    Icons.pedal_bike: '바이크',
    Icons.drive_eta_outlined: '대리',
    Icons.local_parking: '주차',
    Icons.join_full: '카풀',
    Icons.navigation: '내비'
  };

  final int _cntPerRow = 4;
  final double _iconSize = 60.0;

  final List<Widget> _menuItems = [];
  final List<List<Widget>> _menuRows = [];

  MenuComponent() {
    int quotient = (_menus.length / _cntPerRow).floor();
    int remainder = _menus.length % _cntPerRow;

    _menuItems.addAll(
      List.generate(
        _menus.length,
        (index) => _setMenu(
          iconData: _menus.keys.elementAt(index),
          label: _menus.values.elementAt(index),
        ),
      ),
    );

    for (int i = 0; i < quotient; i++) {
      _menuRows.add(
        _menuItems.sublist(
          i * quotient,
          i * quotient + _cntPerRow,
        ),
      );
    }

    if (remainder > 0) {
      List<Widget> lastRow = _menuItems.sublist(_menuItems.length - remainder);

      for (int i = 0; i < _cntPerRow - remainder; i++) {
        lastRow.add(Opacity(opacity: 0.0, child: Icon(null, size: _iconSize)));
      }

      _menuRows.add(lastRow);
    }
  }

  List<List<Widget>> get menusRows => _menuRows;

  Widget _setMenu({required IconData? iconData, required String? label}) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Icon(iconData, size: _iconSize),
          const SizedBox(height: 8.0),
          Text(label ?? ''),
        ],
      ),
    );
  }
}
