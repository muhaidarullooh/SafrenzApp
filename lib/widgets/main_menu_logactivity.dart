import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz_app/widgets/device_akses.dart';
import 'package:safrenz_app/widgets/infofeature.dart';
import 'package:safrenz_app/widgets/log_activity.dart';
import 'package:safrenz_app/widgets/menu_payment.dart';

import '../common/my_colors.dart';

class mainmenulogactivity extends StatefulWidget {
  const mainmenulogactivity({Key? key}) : super(key: key);

  @override
  State<mainmenulogactivity> createState() => _mainmenulogactivityState();
}

class _mainmenulogactivityState extends State<mainmenulogactivity> {
  // bool tappedStar1 = false;
  // bool tappedStar2 = false;
  // bool tappedStar3 = false;
  // bool tappedStar4 = false;
  // bool tappedStar5 = false;

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              // boxShadow: const [
              //   BoxShadow(color: Colors.grey, blurRadius: 0.3),
              // ],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textScaleFactor: 1.0,
                    'Log Activity',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Column(
                    children: [

                      SingleChildScrollView(

                        scrollDirection: Axis.horizontal,

                        child: Row(

                          children: [

                            log_activity(),
                            log_activity(),
                            log_activity(),
                            log_activity(),

                          ],

                        ),

                      ),

                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
