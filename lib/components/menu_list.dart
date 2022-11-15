import 'package:flutter/material.dart';

import 'menu_component.dart';
import 'menu_list_component.dart';

class MenuList extends StatelessWidget {
  final List<List<Widget>> _menusRows = MenuComponent().menusRows;

  MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _menusRows.length,
      itemBuilder: (context, index) =>
          MenuListComponent(menuRow: _menusRows[index]),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 24.0),
    );
  }
}
