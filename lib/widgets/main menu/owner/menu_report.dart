import 'package:flutter/material.dart';
import 'package:safrenz/screens/payment/tenant/payment.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';
import '../../../common/my_colors.dart';
import '../../../common/my_style.dart';

class MenuReport extends StatefulWidget {
  const MenuReport({Key? key}) : super(key: key);

  @override
  State<MenuReport> createState() => _MenuReportState();
}

// Class untuk menyimpan data menu
class MenuItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Widget page; // Menambahkan page untuk navigasi

  MenuItem({required this.title, required this.subtitle, required this.icon, required this.iconColor, required this.page});
}

class _MenuReportState extends State<MenuReport> {
  // List menu dengan ikon SVG
  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'Belum bayar',
      subtitle: '0',
      icon: SRIcon.money_time,
      iconColor: MyColors.yellow,
      page: Payment(), // Navigasi ke halaman PaymentPage
    ),
    MenuItem(
      title: 'Pencairan dana bulan ini',
      subtitle: '0',
      icon: SRIcon.receipt_text,
      iconColor: MyColors.green,
      page: Payment(), // Navigasi ke halaman PaymentPage
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Kotak utama
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Grid Menu Items
                  GridView.builder(
                    itemCount: menuItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 kolom
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 1,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return buildCard(menuItems[index]);
                    },
                  ),
                  const SizedBox(height: 16),
                  // Card Informasi Unit
                  buildInfoCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk Card menu
  Widget buildCard(MenuItem item) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman yang sesuai ketika card diklik
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => item.page),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(color: MyColors.softGrey, width: 1.5),
        ),
        color: MyColors.backcolor,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item.icon, size: 28, color: item.iconColor),
              const SizedBox(height: 8),
              Text(
                item.title,
                style: body2Style.copyWith(color: MyColors.blackText),
              ),
              Text(
                item.subtitle,
                style: body1Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget untuk Card informasi Unit
  Widget buildInfoCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: MyColors.softGrey, width: 1.5),
      ),
      color: MyColors.backcolor,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Informasi Unit
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Unit tersedia',
                  style: body2Style.copyWith(color: MyColors.blackText),
                ),
                Text(
                  '10',
                  style: body1Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // Progress Indicator
            SizedBox(
              height: 36,
              width: 36,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: 0.4,
                    backgroundColor: Colors.grey[300],
                    color: Colors.black,
                    strokeWidth: 4,
                  ),
                  const Center(child: Text("40%")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
