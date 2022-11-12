import 'package:flutter/material.dart';

class WidgetRepository {
  final Map<Icon, String> _bottomNavigationBarItems = {
    const Icon(Icons.home): '홈',
    const Icon(Icons.assignment): '이용서비스',
    const Icon(Icons.account_box): '내 정보'
  };

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

  Map<Icon, String> get bottomNavigationBarItems => _bottomNavigationBarItems;

  Map<IconData, String> get menuItems => _menuItems;

  List<Widget> get banners => _banners;

  List<String> get notices => _notices;
}
