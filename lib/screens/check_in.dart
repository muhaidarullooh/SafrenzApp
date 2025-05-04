import 'package:flutter/material.dart';
import 'package:safrenz/screens/info_unit.dart';
import 'package:safrenz/screens/navigation/nav_screen_tenant.dart';

import '../common/my_colors.dart';
import '../common/my_style.dart';
import '../widgets/components/buttons.dart';
import '../widgets/s_r_icon_icons.dart';
import 'navigation/nav_screen_owner.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({super.key});

  @override
  State<CheckIn> createState() => _CheckInState();
}
class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background(context),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: MyColors.background(context),
        leading: const BackButton(
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(
                        'assets/images/imagerequest.png'),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Scan QR Code atau masukkan kode unit dari pemilik untuk check-In',
                        style: body1Style.copyWith(),
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
                  MaterialPageRoute(builder: (context) => InfoUnit()),
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
                  color: MyColors.border(context)
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Atau',
                  style: body1Style.copyWith(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 1,
                  width: 140,
                  color: MyColors.border(context)
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
                  MaterialPageRoute(builder: (context) => InfoUnit()),
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
                style: body1Style.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
