import 'package:flutter/material.dart';

class BannerListComponent extends StatelessWidget {
  final Widget banner;

  const BannerListComponent({required this.banner, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: banner,
        ),
      ),
    );
  }
}
