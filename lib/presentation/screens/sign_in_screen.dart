import 'package:capstone/common/colors.dart';
import 'package:capstone/data/repositories/auth_repository.dart';
import 'package:capstone/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  AuthRepository authRepository = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text(
              'Health',
              style: TextStyle(
                color: textColor,
                fontSize: 40,
                fontFamily: 'Pretendard',
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff03C75B),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 2),
                      Text(
                        'N',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '네이버로 시작하기',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffFDE500),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/pngwing.com.png',
                        width: 23,
                        height: 23,
                      ),
                      Spacer(),
                      Text(
                        '카카오로 시작하기',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                authRepository.setName(context);
              },
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xffD8D8D8)),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 23,
                        height: 23,
                      ),
                      Spacer(),
                      Text(
                        'Google 시작하기',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 17,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Text('비회원 문의하기', style: TextStyle(color: Color(0xff606060))),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
