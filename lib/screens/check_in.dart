import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/screens/daftar_sebagai.dart';
import 'package:safrenz/screens/navigation/nav_screen_tenant.dart';
import 'package:safrenz/widgets/main_menu_pemilik.dart';
import 'package:safrenz/widgets/main_menu_penyewa.dart';
import 'package:safrenz/widgets/oval_top_border_clipper.dart';

import '../common/my_colors.dart';
import '../common/my_style.dart';
import '../widgets/components/buttons.dart';
import '../widgets/s_r_icon_icons.dart';
import 'daftar.dart';
import 'home/home_tenant.dart';
import 'navigation/nav_screen_owner.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({Key? key}) : super(key: key);

  @override
  State<CheckIn> createState() => _CheckInState();
}
class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 200,
                                width: 200,
                                child: Image.asset(
                                    'assets/images/imagerequest.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Scan QR Code atau masukkan kode unit dari pemilik untuk check-In',
                        style: body1Style.copyWith(color: MyColors.blackText),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            BoxButton(
              leading: Icon(
                SRIcon.scan,
                color: MyColors.white,
              ),
              title:'Scan QR Code',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavScreenTenant()),
                );
              },
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 140,
                  color: MyColors.softGrey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Atau',
                  style: body1Style.copyWith(color: MyColors.blackText),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 1,
                  width: 140,
                  color: MyColors.softGrey,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            BoxButton.outline(
              title:'Masukkan kode',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavScreenOwner()),
                );
              },
            ),
            const SizedBox(
              height: 24,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavScreenTenant()),
                );
              },
              child: Text(
                'Ke Halaman Beranda',
                style: body1Style.copyWith(color: MyColors.blackText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
