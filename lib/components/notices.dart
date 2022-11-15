import 'package:flutter/material.dart';

import '../repositories/notice_repository.dart';
import 'notice_list_component.dart';

class Notices extends StatelessWidget {
  final List<String> _notices = NoticeRepository().notices;

  Notices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _notices.length,
      itemBuilder: (context, index) =>
          NoticeListComponent(notice: _notices[index]),
    );
  }
}
