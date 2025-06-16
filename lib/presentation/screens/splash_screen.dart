import 'package:capstone/common/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff4F79FE), Color(0xff7ED3FF)],
              ),
            ),
          ),
          Text(
            '운동을 통해 운동을',
            style: TextStyle(
              color: textColor,
              fontSize: 30,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
            ),
          ),
          Text('더욱 재미있게 즐겨보세요'),
          Text('운동과 함께하는 재밌는 운동라이프.'),
          Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Icon(Icons.access_time_filled_outlined),
                Spacer(),
                Text('구글 계정으로 계속하기'),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
