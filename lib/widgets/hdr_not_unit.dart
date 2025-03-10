import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz_app/common/my_colors.dart';

class Hdrnotunit extends StatefulWidget {
  const Hdrnotunit({Key? key}) : super(key: key);

  @override
  State<Hdrnotunit> createState() => _HdrnotunitState();
}

class _HdrnotunitState extends State<Hdrnotunit> {
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
      padding: const EdgeInsets.only(left: 20, right: 20),
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
              padding: EdgeInsets.fromLTRB(16, 10, 16, 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          // horizontal: 16,
                          // vertical: 16,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Masukkan akses unit',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Minta kode akses ke pemilik unit',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: SvgPicture.asset(
                                          'assets/images/iconarrowright.svg'),
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
