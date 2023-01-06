import 'package:flutter/material.dart';

import 'package:parked/pages/homepage.dart';
import 'package:parked/pages/paywallet.dart';
import 'package:parked/pages/userlogin.dart';
import 'package:parked/pages/userprofile.dart';

class bottomNav extends StatefulWidget {
  const bottomNav({super.key});

  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomePage(),
    //parkpage(),
    walletPage(),
    userProfile(),
  ];

  void onTapbar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapbar,
        items: [
          const BottomNavigationBarItem(
            tooltip: 'Home',
            label: '',
            icon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
              tooltip: 'Parking spot',
              label: '',
              icon: Icon(Icons.local_parking)),
          const BottomNavigationBarItem(
              tooltip: 'Wallet',
              label: '',
              icon: Icon(Icons.account_balance_wallet)),
          const BottomNavigationBarItem(
              tooltip: 'Settings', label: '', icon: Icon(Icons.menu_sharp)),
        ],
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.greenAccent,
      ),
    );
  }
}
