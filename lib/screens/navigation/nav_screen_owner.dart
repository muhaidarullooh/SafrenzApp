import 'package:flutter/material.dart';
import '../../common/my_colors.dart';
import 'screens_owner.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

class NavScreenOwner extends StatefulWidget {
  const NavScreenOwner({super.key});

  @override
  State<NavScreenOwner> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreenOwner> {
  int _selectedScreenIndex = 0;

  final List _screens = [
    {"screen": const Home(), "title": "Home"},
    {"screen": const Request(), "title": "Request"},
    {"screen": const Account_Owner(), "title": "Account"},
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
        backgroundColor: MyColors.nav(context),
        selectedItemColor: MyColors.primary,
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
                child: Icon(SRIcon.request),
              ),
              label: 'Request'),
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
