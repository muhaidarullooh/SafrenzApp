import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/detailakseslock.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';



class device_akses extends StatefulWidget {
  const device_akses({Key? key}) : super(key: key);

  @override
  State<device_akses> createState() => _device_aksesState();
}

class _device_aksesState extends State<device_akses> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
            horizontal: 8,
            vertical: 8,
          ),
          child: TextButton(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: const Color(0xFFEDEDED),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/imagedevicelock.png',
                            width: 200,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: MyColors.green,
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              textScaleFactor: 1.0,
                              'ON',
                              style: TextStyle(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],

                ),



                const SizedBox(height: 16),



                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            textScaleFactor: 1.0,
                            'Pintu Kamar',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            color: MyColors.softGreen,
                            borderRadius: BorderRadius.circular(500),
                          ),
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  child: Icon(
                                    SRIcon.battery,
                                    color: MyColors.green,
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  textScaleFactor: 1.0,
                                  '100%',
                                  style: TextStyle(
                                      color: MyColors.green,
                                      fontWeight: FontWeight.bold, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
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
