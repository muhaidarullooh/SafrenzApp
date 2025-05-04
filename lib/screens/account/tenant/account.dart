import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/account/tenant/menu_account.dart';

import '../../../providers/theme_provider.dart';
import '../../../widgets/account/tenant/header_account.dart';
import '../../../widgets/account/tenant/header_unit_account.dart';

class Account_Tenant extends StatefulWidget {
  const Account_Tenant({super.key});

  @override
  State<Account_Tenant> createState() => _Account_TenantState();
}

class _Account_TenantState extends State<Account_Tenant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: MyColors.background(context),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      )
                    ],
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
        physics: ClampingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: MyColors.surface(context),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: MyColors.border(context)),
                ),
                width: double.infinity,
                child: const Column(
                  children: [
                    HeaderAccount(),
                    HeaderUnitAccount(),
                  ],
                ),
              )
              ),
              // SizedBox(
              //   height: 24,
              // ),
              MenuAccount(),
              const SizedBox(height: 24),
              const Center(child: ThemeSwitcheraccount()),
              const SizedBox(height: 24),
            ],
          ),
        ],
      ),
    );
  }
}
class ThemeSwitcheraccount extends StatelessWidget {
  const ThemeSwitcheraccount({super.key});

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
