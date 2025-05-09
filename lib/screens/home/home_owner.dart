import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/header/owner/header_home_owner.dart';
import 'package:safrenz/widgets/header/tenant/header_home_tenant.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_opendoor.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_logactivity.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_fitur_lainnya.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safrenz/widgets/main%20menu/owner/menu_manage.dart';
import 'package:safrenz/widgets/main%20menu/owner/menu_report.dart';

import '../../providers/theme_provider.dart';
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
        backgroundColor: MyColors.background(context),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0), // Padding kiri & kanan
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Elemen di sisi kanan & kiri
            children: [

              Row(
                children: [
                  SvgPicture.asset('assets/images/logosafrenz.svg', width: 28),
                  const SizedBox(width: 4),
                  const Text(
                    'Safrenz',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Icon Comment diklik!");
                    },
                    child: Icon(SRIcon.message, size: 28),
                  ),
                  SizedBox(width: 16), // Spasi antara ikon
                  GestureDetector(
                    onTap: () {
                      print("Icon Notification diklik!");
                    },
                    child: Icon(SRIcon.notification, size: 28),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),


      // ===================== BODY ========================== //
      backgroundColor: MyColors.background(context),

      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderHomeOwner(),
              const SizedBox(
                height: 16,
              ),
              const MenuReport(),

              const MenuManage(),
              const SizedBox(height: 24),
              const Center(child: ThemeSwitcher()),
              const SizedBox(height: 24),

            ],
          ),
        ],
      ),
    );
  }
}

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            isDarkMode
                ? "Jika Anda ingin ke mode terang,\nklik tombol di bawah"
                : "Jika Anda ingin ke mode gelap,\nklik tombol di bawah",
            style: TextStyle(
              color: isDarkMode ? Colors.white70 : Colors.black87,
              fontSize: 14,
              height: 1.5, // memberi jarak baris agar lebih nyaman
            ),
            textAlign: TextAlign.center,
          ),
        ),
        GestureDetector(
          onTap: () => themeProvider.toggleTheme(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? MyColors.surface(context)
                  : const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: MyColors.border(context)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
                  color: const Color(0xFF6C63FF),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  isDarkMode ? "Dark Mode" : "Light Mode",
                  style: const TextStyle(
                    color: Color(0xFF6C63FF),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
