import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class aksesdoor extends StatefulWidget {
  const aksesdoor({Key? key}) : super(key: key);

  @override
  State<aksesdoor> createState() => _aksesdoorState();
}

class _aksesdoorState extends State<aksesdoor> {
  // bool tappedStar1 = false;
  // bool tappedStar2 = false;
  // bool tappedStar3 = false;
  // bool tappedStar4 = false;
  // bool tappedStar5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
      color: Colors.transparent,
      // height: 150,
      child: Stack(
        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                // vertical: 24,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          TextButton(
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 65,
                                          width: 65,
                                          child: SvgPicture.asset(
                                              'assets/images/aksespintu.svg'),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          'Buka kuci Pintu',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontSize: 16),
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
                              //         builder: (context) => task()));
                            },
                          ),
                        ],
                      ),
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
