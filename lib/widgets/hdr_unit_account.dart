import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

class Hdrunitaccount extends StatefulWidget {
  const Hdrunitaccount({Key? key}) : super(key: key);

  @override
  State<Hdrunitaccount> createState() => _HdrunitaccountState();
}

class _HdrunitaccountState extends State<Hdrunitaccount> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      // height: 150,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Stack(

        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyColors.backcolor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: MyColors.softGrey,
              ),

              ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    textScaleFactor: 1.0,
                                    'Home Stay Alamanda',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: MyColors.blackText, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    textScaleFactor: 1.0,
                                    'Kota Bandung',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
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
