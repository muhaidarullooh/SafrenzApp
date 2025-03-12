import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/header_home.dart';
import 'package:safrenz/widgets/header_account.dart.dart';
import 'package:safrenz/widgets/main_menu_akseskunci.dart';
import 'package:safrenz/widgets/main_menu_logactivity.dart';
import 'package:safrenz/widgets/main_menu_fitur_lainnya.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Menggunakan flutter_svg package

import '../widgets/header_account.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CustomNavigationBar(),
      // bottomNavigationBar: BottomNavigationBar(items: []),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: MyColors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/logosafrenz.svg', width: 120),
                ],
              ),
            ],
          ),
        ),
      ),
      // ===================== BODY ========================== //
      backgroundColor: MyColors.backcolor,

      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header_home(),  // Pastikan nama widget sesuai
              const SizedBox(
                height: 16,
              ),
              const menuakseskunci(),  // Pastikan nama widget sesuai

              const mainmenufiturlainnya(),  // Pastikan nama widget sesuai

              const mainmenulogactivity()  // Pastikan nama widget sesuai
            ],
          ),
        ],
      ),
    );
  }
}
