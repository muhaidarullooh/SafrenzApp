import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/processakseslock.dart';
import 'package:safrenz/widgets/log_activity_device.dart';
import '../widgets/s_r_icon_icons.dart';

class detailakseslock extends StatefulWidget {
  const detailakseslock({Key? key}) : super(key: key);

  @override
  State<detailakseslock> createState() => _detailakseslockState();
}

class _detailakseslockState extends State<detailakseslock> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: const BackButton(
          color: Colors.black,
        ),
        // title: Text(
        //   'How to Flutter',
        //   style: TextStyle(
        //       color: Color.fromARGB(255, 0, 0, 0),
        //       fontSize: 16,
        //       fontWeight: FontWeight.bold),
        // ),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Container(
                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  // height: 150,
                  // width: 340,
                  decoration: BoxDecoration(
                    color: MyColors.backcolor,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: MyColors.softGrey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: const Color(0xFFEDEDED),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/imagedevicelock.png',
                                    width: 200,
                                    height: 200,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                color: MyColors.green,
                                borderRadius: BorderRadius.circular(500),
                              ),
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      textScaleFactor: 1.0,
                                      'ON',
                                      style: TextStyle(
                                          color: MyColors.white,
                                          fontWeight: FontWeight.bold, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],

                        ),



                        const SizedBox(height: 20),



                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                    child: Text(
                                      textScaleFactor: 1.0,
                                      'Pintu Kamar',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                      color: MyColors.softGreen,
                                      borderRadius: BorderRadius.circular(500),
                                    ),
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            child: Icon(
                                              SRIcon.battery,
                                              color: MyColors.green,
                                              size: 18,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            textScaleFactor: 1.0,
                                            '100%',
                                            style: TextStyle(
                                                color: MyColors.green,
                                                fontWeight: FontWeight.bold, fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  ],
                            ),


                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: MyColors.softGrey,
                                ),
                              ),
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      child: Column(
                                        // mainAxisAlignment:
                                        // MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            child: Icon(
                                              SRIcon.pin,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            textAlign: TextAlign.center,
                                            'PIN',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: MyColors.blackText,
                                                fontSize: 14),
                                          ),
                                        ],
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

                      ],
                    ),
                  ),
                ),

                const Column(
                  children: [

                    SingleChildScrollView(

                      scrollDirection: Axis.horizontal,

                      child: Row(

                        children: [

                          log_activity_device(),
                          log_activity_device(),
                          log_activity_device(),
                          log_activity_device(),

                        ],

                      ),

                    ),

                  ],
                )

              ],
            ),
          ),
        ],
        // bottomNavigationBar: CustomNavigationBar(),
        // bottomNavigationBar: BottomNavigationBar(items: []),

        // ===================== BODY ========================== //
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16.0),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(
                  MyColors.primary),
              shape: MaterialStateProperty.all<
                  RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(50.0),
                      side: BorderSide(color: MyColors.primary)))),
          onPressed: () {

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => processakseslock()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: const Text(
              '    Lanjutkan    ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),

      ),
    );
  }
}
