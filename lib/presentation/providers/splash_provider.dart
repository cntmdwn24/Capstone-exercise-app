import 'package:capstone/presentation/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SplashProvider {
  void startAnimation(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }
}
