import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/header/tenant/header_home_tenant.dart';
import 'package:safrenz/widgets/main menu/tenant/info_akses_unit.dart';
import 'package:safrenz/widgets/main menu/tenant/menu_notification.dart';
import 'package:safrenz/widgets/main menu/tenant/menu_opendoor.dart';
import 'package:safrenz/widgets/main menu/tenant/menu_logactivity.dart';
import 'package:safrenz/widgets/main menu/tenant/menu_fitur_lainnya.dart';
import 'package:safrenz/providers/theme_provider.dart';

import '../../widgets/account/tenant/header_account.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: MyColors.background(context),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logosafrenz.svg', width: 28),
            const SizedBox(width: 4),
            const Text(
              'Safrenz',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
      ),
      backgroundColor: MyColors.background(context),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const HeaderHomeTenant(),
          const SizedBox(height: 16),
          const MenuOpendoor(),
          const MenuFiturLainnya(),
          const MenuLogactivity(),
          const SizedBox(height: 24),
          const Center(child: ThemeSwitcher()), // Tombol custom mode + teks
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

// ============================
// 🎨 CUSTOM SWITCHER BUTTON
// ============================
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
