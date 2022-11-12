import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../components/banner_list_component.dart';
import '../components/notice_list_component.dart';
import '../data/widget_repository.dart';

class HomeScreen extends StatelessWidget {
  final Map<IconData, String> _menuItems = WidgetRepository().menuItems;
  final List<Widget> _banners = WidgetRepository().banners;
  final List<String> _notices = WidgetRepository().notices;

  HomeScreen({Key? key}) : super(key: key);

  Widget _setMenu({required IconData iconData, required String menu}) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Icon(iconData, size: 60.0),
          const SizedBox(height: 8.0),
          Text(menu)
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _setMenu(
                iconData: _menuItems.keys.elementAt(0),
                menu: _menuItems.values.elementAt(0),
              ),
              _setMenu(
                iconData: _menuItems.keys.elementAt(1),
                menu: _menuItems.values.elementAt(1),
              ),
              _setMenu(
                iconData: _menuItems.keys.elementAt(2),
                menu: _menuItems.values.elementAt(2),
              ),
              _setMenu(
                iconData: _menuItems.keys.elementAt(3),
                menu: _menuItems.values.elementAt(3),
              )
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _setMenu(
                iconData: _menuItems.keys.elementAt(4),
                menu: _menuItems.values.elementAt(4),
              ),
              _setMenu(
                iconData: _menuItems.keys.elementAt(5),
                menu: _menuItems.values.elementAt(5),
              ),
              _setMenu(
                iconData: _menuItems.keys.elementAt(6),
                menu: _menuItems.values.elementAt(6),
              ),
              const Opacity(opacity: 0.0, child: Icon(null, size: 60.0))
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: 16 / 10,
        viewportFraction: 1,
        autoPlay: true,
      ),
      itemCount: _banners.length,
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

  Widget _buildBottom() {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _notices.length,
        itemBuilder: (context, index) =>
            NoticeListComponent(notice: _notices[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (_menuItems.isNotEmpty) _buildTop(),
          if (_banners.isNotEmpty) _buildMiddle(),
          _buildBottom()
        ],
      ),
    );
  }
}
