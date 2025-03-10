import 'package:flutter/material.dart';
import 'package:safrenz_app/screens/account.dart';
import 'screens.dart';
import 'package:safrenz_app/widgets/s_r_icon_icons.dart';
import 'package:safrenz_app/screens/activity.dart';
import 'package:safrenz_app/screens/home.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedScreenIndex = 0;

  final List _screens = [
    {"screen": const Home(), "title": "Home"},
    {"screen": const activity(), "title": "Activity"},
    {"screen": const Account(), "title": "Account"},
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_screens[_selectedScreenIndex]["title"]),
      // ),
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF0B0020),
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 2.0,
                  top: 7.0,
                ),
                child: Icon(SRIcon.home),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 2.0,
                  top: 7.0,
                ),
                child: Icon(SRIcon.message),
              ),
              label: 'Komunikasi'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                  bottom: 2.0,
                  top: 5.0,
                ),
                child: Icon(SRIcon.user),
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}
