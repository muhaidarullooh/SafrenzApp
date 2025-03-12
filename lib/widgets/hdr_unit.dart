import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

class Hdrunit extends StatefulWidget {
  const Hdrunit({Key? key}) : super(key: key);

  @override
  State<Hdrunit> createState() => _HdrunitState();
}

class _HdrunitState extends State<Hdrunit> {
  // bool tappedStar1 = false;
  // bool tappedStar2 = false;
  // bool tappedStar3 = false;
  // bool tappedStar4 = false;
  // bool tappedStar5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      // height: 150,
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Stack(

        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyColors.surface.withOpacity(0.9),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),),
              border: Border.all(
                color: MyColors.surface2,
              ),

              ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    child: Container(
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          // horizontal: 16,
                          // vertical: 16,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Row(
                                //   // crossAxisAlignment: CrossAxisAlignment.end,
                                //   // mainAxisAlignment: MainAxisAlignment.center,
                                //   children: [
                                //     SizedBox(
                                //       child: Icon(
                                //         SRIcon.buliding,
                                //         color: MyColors.white,
                                //         size: 24,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                // SizedBox(
                                //   width: 8,
                                // ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Home Stay Alamanda',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Kota Bandung',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => detailattd()));
                    },
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
