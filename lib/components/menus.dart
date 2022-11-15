import 'package:flutter/material.dart';

import 'menus_component.dart';
import 'menus_list_component.dart';

class Menus extends StatelessWidget {
  final List<List<Widget>> _menusRows = MenusComponent().menusRows;

  Menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _menusRows.length,
      itemBuilder: (context, index) =>
          MenusListComponent(menusRow: _menusRows[index]),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 24.0),
    );
  }
}
