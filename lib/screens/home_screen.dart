import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../components/banner_list_component.dart';
import '../components/notice_list_component.dart';

class HomeScreen extends StatelessWidget {
  final Map<IconData, String> _menuItems = {
    Icons.local_taxi_outlined: '택시',
    Icons.local_taxi: '블랙',
    Icons.pedal_bike: '바이크',
    Icons.drive_eta_outlined: '대리',
    Icons.local_parking: '주차',
    Icons.join_full: '카풀',
    Icons.navigation: '내비'
  };

  final List<Widget> _banners = [
    /* 1 */
    Stack(
      children: [
        /* 1 */
        Container(color: Colors.lightGreen),

        /* 2 */
        Container(
          padding: const EdgeInsets.only(left: 24.0, top: 24.0),
          alignment: Alignment.topLeft,
          child: FractionallySizedBox(
            widthFactor: 0.25,
            child: Image.asset('assets/images/ryan.png'),
          ),
        ),

        /* 3 */
        Container(
          padding: const EdgeInsets.only(right: 24.0, bottom: 24.0),
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              /* 1 */
              FractionallySizedBox(
                widthFactor: 0.6,
                child: FittedBox(
                  child: Text(
                    '그러게 일찍 좀\n일어나지 그랬어',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              /* 2 */
              Flexible(child: FractionallySizedBox(heightFactor: 0.1)),

              /* 3 */
              FractionallySizedBox(
                widthFactor: 0.7,
                child: FittedBox(
                  child: Text(
                    '기왕 늦은거 편하게 택시타고 가자',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),

    /* 2 */
    Image.network(
      'https://kakaostyle.com/_next/static/images/fashionbykakao_og_banner-287d151c5f4da1605c94175cc4323950.jpg',
      fit: BoxFit.contain,
    )
  ];

  final List<String> _notices = [
    '[이벤트] 추석에 KTX 공항, 터미널 이용한다면?',
    '3.4.3 버전 업데이트 안내',
    '3.4.2 버전 업데이트 안내',
    '3.4.1 버전 업데이트 안내',
    '3.4.0 버전 업데이트 안내'
  ];

  HomeScreen({Key? key}) : super(key: key);

  Widget setMenu(IconData iconData, String menu) {
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
              setMenu(
                _menuItems.keys.elementAt(0),
                _menuItems.values.elementAt(0),
              ),
              setMenu(
                _menuItems.keys.elementAt(1),
                _menuItems.values.elementAt(1),
              ),
              setMenu(
                _menuItems.keys.elementAt(2),
                _menuItems.values.elementAt(2),
              ),
              setMenu(
                _menuItems.keys.elementAt(3),
                _menuItems.values.elementAt(3),
              )
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              setMenu(
                _menuItems.keys.elementAt(4),
                _menuItems.values.elementAt(4),
              ),
              setMenu(
                _menuItems.keys.elementAt(5),
                _menuItems.values.elementAt(5),
              ),
              setMenu(
                _menuItems.keys.elementAt(6),
                _menuItems.values.elementAt(6),
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
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
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
          if (_notices.isNotEmpty) _buildBottom()
        ],
      ),
    );
  }
}
