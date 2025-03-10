import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/my_colors.dart';
// import 'package:gojek_design_flutter/theme.dart';

class Hdrprofile extends StatelessWidget {
  const Hdrprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Stack(
        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 0,
                vertical: 0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 36,
                                width: 36,
                                child: Image.asset('assets/images/avatar.png'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Jhondoe',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'jondoe@gmail.com',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                            decoration: BoxDecoration(
                              color: MyColors.surface.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: MyColors.surface2,
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        textScaleFactor: 1.0,
                                        'No Kamar',
                                        style: TextStyle(
                                            color: MyColors.white,fontSize: 10),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        textScaleFactor: 1.0,
                                        'KAMAR-2',
                                        style: TextStyle(
                                            color: MyColors.white,
                                            fontWeight: FontWeight.bold, fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: <Widget>[
                  //           // Add some spacing between the top of the card and the title
                  //           // Container(height: 5),
                  //           // Add a title widget
                  //           Text(
                  //             "Kosan Pak Supri",
                  //             style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 16),
                  //           ),
                  //           // Add some spacing between the title and the subtitle
                  //           Container(height: 8),
                  //           // Add a subtitle widget
                  //           Text(
                  //             "Kota Bandung",
                  //             style:
                  //                 TextStyle(color: Colors.white, fontSize: 12),
                  //           ),
                  //           // Add some spacing between the subtitle and the text
                  //           // Container(height: 10),
                  //           // Add a text widget to display some text
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
