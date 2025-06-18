import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List<Widget> _screens = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/vectors/dumbbel.svg'),
            label: '트레이닝',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: '맵'),
          BottomNavigationBarItem(icon: Icon(Icons.flag_outlined), label: '챌린'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '마이',
          ),
        ],
      ),
    );
  }
}
