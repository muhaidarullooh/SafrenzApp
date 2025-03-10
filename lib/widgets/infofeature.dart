import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class infofeature extends StatefulWidget {
  const infofeature({Key? key}) : super(key: key);

  @override
  State<infofeature> createState() => _infofeatureState();
}

class _infofeatureState extends State<infofeature> {
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
      child: Stack(
        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: const [
                  //     Text(
                  //       'Anda belum melakukan absensi',
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold, fontSize: 18),
                  //     ),
                  //     const SizedBox(
                  //       height: 8,
                  //     ),
                  //     Text(
                  //       'Untuk bisa akses menu ini anda harus lakukan absensi terlebih dahulu',
                  //       style: TextStyle(fontSize: 16),
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Column(
                  //       children: [
                  //         SizedBox(
                  //           height: 24,
                  //           child: SvgPicture.asset(
                  //               'assets/images/menu_visit.svg'),
                  //         ),
                  //       ],
                  //     ),
                  //     Expanded(
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: <Widget>[
                  //           // Add some spacing between the top of the card and the title
                  //           // Container(height: 5),
                  //           // Add a title widget
                  //           Text(
                  //             "Sedang Aktif",
                  //             style: TextStyle(
                  //                 fontWeight: FontWeight.bold, fontSize: 16),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  Container(
                    margin: EdgeInsets.fromLTRB(8, 16, 8, 24),
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 0.1),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          TextButton(
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    // horizontal: 16,
                                    // vertical: 16,
                                    ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              // Add some spacing between the top of the card and the title
                                              // Container(height: 5),
                                              // Add a title widget
                                              Text(
                                                "Toko Sederhana",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              // Add some spacing between the title and the subtitle
                                              Container(height: 8),
                                              // Add a subtitle widget
                                              Text(
                                                "Jln. Cilalawak Kadumekar",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0),
                                                    fontSize: 12),
                                              ),
                                              // Add some spacing between the subtitle and the text
                                              // Container(height: 10),
                                              // Add a text widget to display some text
                                            ],
                                          ),
                                        ),
                                        Column(
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
                              //         builder: (context) => detailstore()));
                            },
                          ),
                        ],
                      ),
                    ),
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
