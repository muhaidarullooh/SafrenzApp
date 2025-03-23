import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/header/owner/header_home_owner.dart';
import 'package:safrenz/widgets/header/tenant/header_home_tenant.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_opendoor.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_logactivity.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_fitur_lainnya.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safrenz/widgets/main%20menu/owner/menu_manage.dart';
import 'package:safrenz/widgets/main%20menu/owner/menu_report.dart';

import '../../widgets/account/tenant/header_account.dart';
import '../../widgets/s_r_icon_icons.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 0), // Padding kiri & kanan
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Elemen di sisi kanan & kiri
            children: [
              SvgPicture.asset('assets/images/logosafrenz.svg', width: 120), // Logo

              Row( // Menampung ikon notifikasi & komentar
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Icon Comment diklik!");
                    },
                    child: Icon(SRIcon.message, color: MyColors.blackText, size: 28),
                  ),
                  SizedBox(width: 16), // Spasi antara ikon
                  GestureDetector(
                    onTap: () {
                      print("Icon Notification diklik!");
                    },
                    child: Icon(SRIcon.notification, color: MyColors.blackText, size: 28),
                  ),
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
              const HeaderHomeOwner(),  // Pastikan nama widget sesuai
              const SizedBox(
                height: 16,
              ),
              const MenuReport(),  // Pastikan nama widget sesuai

              const MenuManage(),  // Pastikan nama widget sesuai

            ],
          ),
        ],
      ),
    );
  }
}
