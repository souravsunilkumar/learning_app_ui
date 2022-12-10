import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/explorer%20tab/explorer.dart';
import 'package:flutter_online_learning_app/screens/home_screen.dart';
import 'package:flutter_online_learning_app/screens/leaderboard.dart';
import 'package:flutter_online_learning_app/screens/profile_page.dart';

class pageselector extends StatefulWidget {
  const pageselector({Key? key}) : super(key: key);

  @override
  State<pageselector> createState() => _pageselectorState();
}

class _pageselectorState extends State<pageselector> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    explorer(),
    HomeScreen(),
    Profile(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grade), label: 'Leader Board'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
