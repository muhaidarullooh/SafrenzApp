import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/header/tenant/header_home_tenant.dart';
import 'package:safrenz/widgets/main%20menu/tenant/info_akses_unit.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_notification.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_opendoor.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_logactivity.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_fitur_lainnya.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/account/tenant/header_account.dart';

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
              const HeaderHomeTenant(),  // Pastikan nama widget sesuai
              const SizedBox(
                height: 16,
              ),
              const MenuNotification(),
              const MenuOpendoor(),  // Pastikan nama widget sesuai

              const MenuFiturLainnya(),

              const MenuLogactivity(),// Pastikan nama widget sesuai

              const InfoAksesUnit()  // Pastikan nama widget sesuai
            ],
          ),
        ],
      ),
    );
  }
}
