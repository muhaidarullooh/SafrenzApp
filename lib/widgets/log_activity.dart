import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz_app/common/my_colors.dart';
import 'package:safrenz_app/screens/detailakseslock.dart';
import 'package:safrenz_app/widgets/s_r_icon_icons.dart';



class log_activity extends StatefulWidget {
  const log_activity({Key? key}) : super(key: key);

  @override
  State<log_activity> createState() => _log_activityState();
}

class _log_activityState extends State<log_activity> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.backcolor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: MyColors.softGrey,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: TextButton(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
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
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],

                ),



                const SizedBox(height: 20),



                const Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Text(
                        textScaleFactor: 1.0,
                        'Jhondoe',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Text(
                        textScaleFactor: 1.0,
                        '18:00',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Text(
                        textScaleFactor: 1.0,
                        'Pintu depan',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Text(
                        textScaleFactor: 1.0,
                        'Berhasil',
                        style: TextStyle(
                            color: Colors.green,
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
