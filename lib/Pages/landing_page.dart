import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/profile_page.dart';
import 'package:flutter_application_1/Pages/settings_page.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  //list of pages
  final List _pages = [
    //home
    HomePage(),
    //profile
    ProfilePage(),
    //setting
    SettingsPage(),
  ];

//method to upate selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LandingPage")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          //home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //profile
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'profile'),
          //settings
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings')
        ],
      ),
    );
  }
}
