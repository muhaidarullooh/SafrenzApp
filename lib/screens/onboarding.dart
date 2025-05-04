import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/screens/daftar_sebagai.dart';
import 'package:safrenz/widgets/main_menu_pemilik.dart';
import 'package:safrenz/widgets/main_menu_penyewa.dart';
import 'package:safrenz/widgets/oval_top_border_clipper.dart';

import '../common/my_colors.dart';
import '../common/my_style.dart';
import '../widgets/components/buttons.dart';
import 'daftar.dart';
import 'home/home_tenant.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}
class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background(context),
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
                                    'assets/images/onb1.png'),
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
                        'Kelola unit anda sesuai dengan kebutuhan dengan mudah',
                        style: body1Style.copyWith(color: MyColors.blackText(context)),
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
            BoxButton.outline(
              title:'Masuk atau daftar dengan Google',
              leading: SvgPicture.asset(
                'assets/images/ic_google.svg',
                width: 24,
                height: 24,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => daftarsebagai()),
                );
              },
            ),
            const SizedBox(
              height: 24,
            ),
            BoxButton(
              title:'Masuk atau daftar dengan Apple ID',
              leading: SvgPicture.asset(
                'assets/images/ic_apple.svg',
                width: 24,
                height: 24,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => daftarsebagai()),
                );
              },
            ),
            const SizedBox(
              height: 36,
            ),
          ],
        ),
      ),
    );
  }
}
