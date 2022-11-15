import 'package:flutter/material.dart';

import '../components/banners.dart';
import '../components/menus.dart';
import '../components/notices.dart';

class HomeScreen extends StatelessWidget {
  final List<Widget> _contents = [Menus(), Banners(), Notices()];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(32.0),
      itemCount: _contents.length,
      itemBuilder: (context, index) => _contents[index],
      separatorBuilder: (context, index) => const SizedBox(height: 24.0),
    );
  }
}
