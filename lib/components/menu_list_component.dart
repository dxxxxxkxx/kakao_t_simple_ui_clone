import 'package:flutter/material.dart';

class MenuListComponent extends StatelessWidget {
  final List<Widget> menuRow;

  const MenuListComponent({required this.menuRow, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: menuRow,
    );
  }
}
