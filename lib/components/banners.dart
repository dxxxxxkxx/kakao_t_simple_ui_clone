import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../repositories/banner_repository.dart';
import 'banner_list_component.dart';

class Banners extends StatelessWidget {
  final List<Widget> _banners = BannerRepository().banners;

  Banners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: 16 / 10,
        viewportFraction: 1,
        autoPlay: true,
      ),
      itemCount: _banners.isEmpty ? null : _banners.length,
      itemBuilder: (BuildContext context, int index, int realIndex) => Column(
        children: [
          Expanded(
            flex: 9,
            child: BannerListComponent(banner: _banners[index]),
          ),
          Expanded(
            child: Text(
              '${index + 1}/${_banners.length}',
              style: const TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
