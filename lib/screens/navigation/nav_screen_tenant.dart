import 'package:flutter/material.dart';
import '../../common/my_colors.dart';
import 'screens_tenant.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

class NavScreenTenant extends StatefulWidget {
  const NavScreenTenant({super.key});

  @override
  State<NavScreenTenant> createState() => _NavScreenTenantState();
}

class _NavScreenTenantState extends State<NavScreenTenant> {
  int _selectedScreenIndex = 0;

  final List _screens = [
    {"screen": const Home(), "title": "Home"},
    {"screen": const activity(), "title": "Komunikasi"},
    {"screen": const Account_Tenant(), "title": "Account"},
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
