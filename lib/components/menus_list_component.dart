import 'package:flutter/material.dart';

class MenusListComponent extends StatelessWidget {
  final List<Widget> menusRow;

  const MenusListComponent({required this.menusRow, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: menusRow,
    );
  }
}
