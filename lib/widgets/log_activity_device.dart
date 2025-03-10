import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz_app/common/my_colors.dart';
import 'package:safrenz_app/screens/detailakseslock.dart';
import 'package:safrenz_app/widgets/s_r_icon_icons.dart';



class log_activity_device extends StatefulWidget {
  const log_activity_device({Key? key}) : super(key: key);

  @override
  State<log_activity_device> createState() => log_activity_deviceState();
}

class log_activity_deviceState extends State<log_activity_device> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.backcolor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: MyColors.softGrey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 0,
          ),
          child: TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: const Color(0xFFEDEDED),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/avatar.png',
                          // width: 60,
                          // height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],

                ),



                const SizedBox(width: 8),



                const Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                      child: Text(
                        textScaleFactor: 1.0,
                        'Jhondoe',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Text(
                        textScaleFactor: 1.0,
                        '18:00',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),



                  ],

                ),

              ],
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => detailakseslock()));
            },
          ),

        ),
      ),
    );
  }
}
