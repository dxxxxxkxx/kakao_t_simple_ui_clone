import 'package:flutter/material.dart';

class BannerRepository {
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

  List<Widget> get banners => _banners;
}
