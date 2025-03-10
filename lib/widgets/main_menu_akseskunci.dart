import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz_app/widgets/device_akses.dart';
import 'package:safrenz_app/widgets/infofeature.dart';

class menuakseskunci extends StatefulWidget {
  const menuakseskunci({Key? key}) : super(key: key);

  @override
  State<menuakseskunci> createState() => _menuakseskunciState();
}

class _menuakseskunciState extends State<menuakseskunci> {
  // bool tappedStar1 = false;
  // bool tappedStar2 = false;
  // bool tappedStar3 = false;
  // bool tappedStar4 = false;
  // bool tappedStar5 = false;

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
                'Akses Buka Kunci',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      device_akses(),
                      SizedBox(
                        width: 8,
                      ),
                      device_akses(),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      device_akses(),
                      SizedBox(
                        width: 8,
                      ),
                      device_akses(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      );
  }
}
