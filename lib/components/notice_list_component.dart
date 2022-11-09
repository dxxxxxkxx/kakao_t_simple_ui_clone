import 'package:flutter/material.dart';

class NoticeListComponent extends StatelessWidget {
  final String notice;

  const NoticeListComponent({required this.notice, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: const Icon(Icons.notifications_none),
      title: Text(
        notice,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
