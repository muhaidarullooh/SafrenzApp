import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

import '../common/my_colors.dart';

class Hdrprofileaccount extends StatelessWidget {
  const Hdrprofileaccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 10, right: 10, bottom: 16),
      child: Stack(
        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
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
                      Row(
                        children: [
                          SizedBox(
                            height: 36,
                            width: 36,
                            child: Image.asset('assets/images/avatar.png'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                textScaleFactor: 1.0,
                                'Jhondoe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black, fontSize: 16),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                textScaleFactor: 1.0,
                                'jondoe@gmail.com',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
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
    );
  }
}
