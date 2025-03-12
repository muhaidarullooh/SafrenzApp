import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/screens/setting_company.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

class MenuAccount extends StatefulWidget {
  const MenuAccount({Key? key}) : super(key: key);

  @override
  State<MenuAccount> createState() => _MenuAccountState();
}

class _MenuAccountState extends State<MenuAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
      color: Colors.transparent,
      // height: 150,
      child: Stack(
        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            // height: 150,
            // width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
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
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 24,
                                        SRIcon.pin,
                                        color: Color.fromARGB(167, 0, 0, 0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Atur PIN Aplikasi',
                                      style: TextStyle(
                                          color: Color.fromARGB(167, 0, 0, 0),
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 18,
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromARGB(167, 0, 0, 0),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => setting_company()));
                    },
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 13),
                    child: Container(
                      height: 1.0,
                      // width: 130.0,
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                  ),
                  TextButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
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
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 24,
                                        SRIcon.syaratketentuan,
                                        color: Color.fromARGB(167, 0, 0, 0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Syarat & Ketentuan',
                                      style: TextStyle(
                                          color: Color.fromARGB(167, 0, 0, 0),
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 18.0,
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromARGB(167, 0, 0, 0),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => setting_company()));
                    },
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 13),
                    child: Container(
                      height: 1.0,
                      // width: 130.0,
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                  ),
                  TextButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
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
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 24,
                                        SRIcon.clipboard_text,
                                        color: Color.fromARGB(167, 0, 0, 0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Saran untuk pengembang',
                                      style: TextStyle(
                                          color: Color.fromARGB(167, 0, 0, 0),
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 18.0,
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromARGB(167, 0, 0, 0),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => setting_company()));
                    },
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 13),
                    child: Container(
                      height: 1.0,
                      // width: 130.0,
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                  ),
                  TextButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
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
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 24,
                                        SRIcon.star,
                                        color: Color.fromARGB(167, 0, 0, 0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Beri Rating',
                                      style: TextStyle(
                                          color: Color.fromARGB(167, 0, 0, 0),
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 18.0,
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromARGB(167, 0, 0, 0),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => setting_company()));
                    },
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 13),
                    child: Container(
                      height: 1.0,
                      // width: 130.0,
                      color: Color.fromARGB(255, 238, 238, 238),
                    ),
                  ),
                  TextButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
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
                                Row(
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 24,
                                        SRIcon.logout,
                                        color: Color.fromARGB(167, 0, 0, 0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text(
                                      textScaleFactor: 1.0,
                                      'Logout',
                                      style: TextStyle(
                                          color: Color.fromARGB(167, 0, 0, 0),
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        size: 18.0,
                                        Icons.arrow_forward_ios_rounded,
                                        color: Color.fromARGB(167, 0, 0, 0),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => setting_company()));
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
