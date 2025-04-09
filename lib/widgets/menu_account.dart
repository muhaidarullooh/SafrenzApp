import 'package:flutter/material.dart';
import 'package:safrenz/screens/daftar.dart';
import 'package:safrenz/screens/kode_pin.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

import '../common/my_colors.dart';

class MenuAccount extends StatefulWidget {
  const MenuAccount({super.key});

  @override
  State<MenuAccount> createState() => _MenuAccountState();
}

class _MenuAccountState extends State<MenuAccount> {
  void _onMenuItemTap(String title) {
    // Handle menu item click here
    print('Clicked on: $title');
  }

  final List<Map<String, dynamic>> menuItems = [
    {
      'icon': SRIcon.pin,
      'title': 'Atur PIN Aplikasi',
      'onTap': (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KodePin()),
        );
      },
    },
    {'icon': SRIcon.syaratketentuan, 'title': 'Syarat & Ketentuan', 'onTap': (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => daftar()),
      );
    },
    },
    {'icon': SRIcon.clipboard_text, 'title': 'Saran untuk pengembang', 'onTap': () {}},
    {'icon': SRIcon.star, 'title': 'Beri Rating', 'onTap': () {}},
    {'icon': SRIcon.logout, 'title': 'Logout', 'onTap': () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: menuItems.length,
          separatorBuilder: (context, index) => Divider(
            color: MyColors.softGrey,
            thickness: 1,
            indent: 16,
            endIndent: 16,
          ),
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return ListTile(
              leading: Icon(item['icon'], size: 24, color: Colors.black54),
              title: Text(
                item['title'],
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              trailing: Icon(Icons.chevron_right, color: MyColors.grey, size: 24),
              onTap: () => item['onTap'](context),
            );
          },
        ),
      ),
    );
  }
}
