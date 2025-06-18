import 'package:capstone/common/colors.dart';
import 'package:flutter/material.dart';

import '../components/custom_swiper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void handleTap(int index) {
    switch (index) {
      case 0:
        // _launchURL(url0);
        break;
      case 1:
        // _launchURL(url1);
        break;
      case 2:
        // _launchURL(url2);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6EFE9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'My Health',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 30,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffF1E7DE),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Image.asset(
                          'assets/images/Glowing Star (2).gif',
                          width: 30,
                          height: 30,
                        ),
                        Spacer(),
                        Text(
                          '14',
                          style: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '개',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.notifications, size: 30, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 25),
            SizedBox(
              width: 350,
              height: 350,
              child: Stack(
                children: [
                  Image.asset('assets/images/back.png', fit: BoxFit.cover),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          '2025.06.17 Tue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '00:00:00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 40),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(Icons.play_arrow_rounded, size: 50),
                              ),
                            ),
                            SizedBox(width: 20),
                            Image.asset(
                              'assets/images/KakaoTalk_Photo_2025-06-16-15-15-48.png',
                              width: 160,
                              height: 160,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/calendar.png',
                          width: 35,
                          height: 35,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Check-in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff00246B),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Convenience Store.png',
                          width: 35,
                          height: 35,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '입실하기',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomSwiper(
              items: List.generate(3, (index) {
                return Image.asset(
                  'assets/images/banner${index + 1}.png',
                  fit: BoxFit.cover,
                );
              }),
              height: 100,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              onTap: (index) => handleTap(index),
            ),
            Row(children: [Text('이번 주 운동 시간')]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [Text('00m 00s'), Text('이번주 공부 기록이 없어요😫')]),
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '운동 분석 보기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(width: 40, height: 100, color: Colors.red),
                    Text('월'),
                    Text('16'),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 40, height: 100, color: Colors.red),
                    Text('월'),
                    Text('16'),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 40, height: 100, color: Colors.red),
                    Text('월'),
                    Text('16'),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 40, height: 100, color: Colors.red),
                    Text('월'),
                    Text('16'),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 40, height: 100, color: Colors.red),
                    Text('월'),
                    Text('16'),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 40, height: 100, color: Colors.red),
                    Text('월'),
                    Text('16'),
                  ],
                ),
                Column(
                  children: [
                    Container(width: 40, height: 100, color: Colors.red),
                    Text('월'),
                    Text('16'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(width: 350, height: 90, color: Colors.red),
            SizedBox(height: 10),
            Container(width: 350, height: 90, color: Colors.red),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
