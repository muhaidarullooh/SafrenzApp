import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safrenz/screens/payment/tenant/payment.dart'; // Halaman yang ingin Anda tuju
import '../../../common/my_colors.dart';
import '../../../common/my_style.dart';

class MenuManage extends StatefulWidget {
  const MenuManage({Key? key}) : super(key: key);

  @override
  State<MenuManage> createState() => _MenuManageState();
}

// Class untuk menyimpan data menu
class MenuItem {
  final String title;
  final String svgPath;
  final Widget page; // Menambahkan page untuk navigasi

  MenuItem({required this.title, required this.svgPath, required this.page});
}

class _MenuManageState extends State<MenuManage> {
  // List menu dengan ikon SVG dan halaman tujuan
  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'Lokasi',
      svgPath: 'assets/images/menu_lokasi.svg',
      page: Payment(), // Navigasi ke halaman PaymentPage
    ),
    MenuItem(
      title: 'Tenant',
      svgPath: 'assets/images/menu_tenant.svg',
      page: Payment(), // Navigasi ke halaman PaymentPage
    ),
    MenuItem(
      title: 'Smartlock',
      svgPath: 'assets/images/menu_smartlock.svg',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Grid Menu Items
                GridView.builder(
                  itemCount: menuItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // 3 kolom
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
        ],
      ),
    );
  }

  // Widget untuk Card menu
  Widget buildCard(MenuItem item) {
    return GestureDetector(
      // onTap: () {
      //   // Navigasi ke halaman yang sesuai ketika card diklik
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => item.page),
      //   );
      // },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(color: MyColors.border(context)),
        ),
        color: MyColors.surface(context),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(item.svgPath, height: 36, width: 36),
              const SizedBox(height: 8),
              Text(
                item.title,
                style: captionStyle.copyWith(),
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
        side: BorderSide(color: MyColors.border(context)),
      ),
      color: MyColors.surface(context),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: MyColors.background(context),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/imagedevicelock.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pembelian Smartlock',
                          style: body2Style.copyWith(fontWeight: FontWeight.bold,),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'info selengkapnya',
                          style: captionStyle.copyWith(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.chevron_right, color: MyColors.white, size: 24),
          ],
        ),
      ),
    );
  }
}
