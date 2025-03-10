import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gojek_design_flutter/theme.dart';

class Headergreeting extends StatelessWidget {
  const Headergreeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              // padding: const EdgeInsets.all(8),
              // decoration: BoxDecoration(
              //     color: const Color(0xFFFAFAFA),
              //     borderRadius: BorderRadius.circular(30),
              //     border: Border.all(color: const Color(0xFFE8E8E8))),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi, Jhondoe',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Selamat pagi, semoga hari mu menyenangkan',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),

                      // Text(
                      //   'Today, 11.16',
                      //   style: TextStyle(fontSize: 13),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
              width: 38,
              height: 38,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(38 / 2)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: const Text(
                      'JD',
                      style: TextStyle(
                          color: Color(0xFF0D47A1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    // clipBehavior: Clip.hardEdge,
                    // child: Image.asset('assets/images/avatar.png'),
                  ),
                  // Positioned(
                  //     // left: 0,
                  //     right: 0,
                  //     bottom: 0,
                  //     child: Container(
                  //       // width: 16,
                  //       // height: 16,
                  //       decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //           color: const Color(0xFF58BC6B)),
                  //       // clipBehavior: Clip.hardEdge,
                  //       // child: SvgPicture.asset(
                  //       //   'assets/icons/goclub.svg',
                  //       //   // color: blue3,
                  //       // ),
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 3, vertical: 1),
                  //       child: const Text(
                  //         'Member',
                  //         style: TextStyle(
                  //             color: Color(0xFFFFFFFF),
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 10),
                  //       ),
                  //     ))
                ],
              ))
        ],
      ),
    );
  }
}
