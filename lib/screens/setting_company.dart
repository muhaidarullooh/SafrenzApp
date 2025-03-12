import 'package:flutter/material.dart';
import 'package:safrenz/widgets/custom_clipper.dart';

class setting_company extends StatefulWidget {
  const setting_company({Key? key}) : super(key: key);

  @override
  State<setting_company> createState() => _setting_companyState();
}

class _setting_companyState extends State<setting_company> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 250, 250, 250),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0D47A1),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Setting Company',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyCustomClipper(clipType: ClipType.bottom),
            child: Container(
              color: const Color(0xff0D47A1),
              height: 150,
              // height: Constants.headerHeight + statusBarHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                SizedBox(height: 24),
                // Chart

                Material(
                  shadowColor: Colors.grey.withOpacity(0.15), // added
                  type: MaterialType.card,
                  elevation: 10, borderRadius: new BorderRadius.circular(16.0),

                  child: Container(
                    padding: EdgeInsets.all(16),
                    // height: 260,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Card(
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                        topRight: Radius.circular(8)),
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 70,
                                        child: Image.asset(
                                            'assets/images/customer.png'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Add some spacing between the top of the card and the title
                                  // Container(height: 5),
                                  // Add a title widget
                                  const Text(
                                    "Nuteam.inc",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  // Add some spacing between the title and the subtitle
                                  Container(height: 8),
                                  // Add a subtitle widget
                                  const Text(
                                    "08111804006",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Container(height: 8),
                                  const Text(
                                    "nuteam@gmail.com",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  // Add some spacing between the subtitle and the text
                                  // Container(height: 10),
                                  // Add a text widget to display some text
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 0),
                          child: Container(
                            height: 1.5,
                            // width: 130.0,
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Kode Perusahaan',
                                  style: TextStyle(
                                      color: const Color(0xFF000000),
                                      fontSize: 16),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  'NTM2022',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Type',
                                  style: TextStyle(
                                      color: const Color(0xFF000000),
                                      fontSize: 16),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  'Teknologi',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF000000),
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 0),
                          child: Container(
                            height: 1.5,
                            // width: 130.0,
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Add some spacing between the top of the card and the title
                                  // Container(height: 5),
                                  // Add a title widget
                                  Text(
                                    "Address",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Container(height: 8),
                                  Text(
                                    "Jln. Cilalawak Kadumekar, Maracang, Kec. Babakancikao, Kabupaten Purwakarta...",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  // Add some spacing between the title and the subtitle

                                  // Add a subtitle widget
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ), // added
                ),
                SizedBox(height: 24),
                Container(
                  // height: 150,
                  // width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 0.1),
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          child: Container(
                            width: double.infinity,
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
                                      Row(
                                        children: [
                                          const Text(
                                            'Edit Company',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    167, 0, 0, 0),
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            child: Icon(
                                              size: 20.0,
                                              Icons.arrow_forward_ios_rounded,
                                              color:
                                                  Color.fromARGB(167, 0, 0, 0),
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 9),
                          child: Container(
                            height: 1.0,
                            // width: 130.0,
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                        ),
                        TextButton(
                          child: Container(
                            width: double.infinity,
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
                                      Row(
                                        children: [
                                          const Text(
                                            'Update Company',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    167, 0, 0, 0),
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            child: Icon(
                                              size: 20.0,
                                              Icons.arrow_forward_ios_rounded,
                                              color:
                                                  Color.fromARGB(167, 0, 0, 0),
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
                            //         builder: (context) => setting_company()));
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 9),
                          child: Container(
                            height: 1.0,
                            // width: 130.0,
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                        ),
                        TextButton(
                          child: Container(
                            width: double.infinity,
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
                                      Row(
                                        children: [
                                          const Text(
                                            'Shift',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    167, 0, 0, 0),
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            child: Icon(
                                              size: 20.0,
                                              Icons.arrow_forward_ios_rounded,
                                              color:
                                                  Color.fromARGB(167, 0, 0, 0),
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 9),
                          child: Container(
                            height: 1.0,
                            // width: 130.0,
                            color: Color.fromARGB(255, 238, 238, 238),
                          ),
                        ),
                        TextButton(
                          child: Container(
                            width: double.infinity,
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
                                      Row(
                                        children: [
                                          const Text(
                                            'Reminder',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    167, 0, 0, 0),
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            child: Icon(
                                              size: 20.0,
                                              Icons.arrow_forward_ios_rounded,
                                              color:
                                                  Color.fromARGB(167, 0, 0, 0),
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
          ),
        ],
        // bottomNavigationBar: CustomNavigationBar(),
        // bottomNavigationBar: BottomNavigationBar(items: []),

        // ===================== BODY ========================== //
      ),
    );
  }
}
