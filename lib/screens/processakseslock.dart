import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/log_activity_device.dart';
import '../widgets/s_r_icon_icons.dart';

class processakseslock extends StatefulWidget {
  const processakseslock({Key? key}) : super(key: key);

  @override
  State<processakseslock> createState() => _processakseslockState();
}

class _processakseslockState extends State<processakseslock> {
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
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                      vertical: 48,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
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
                       Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                          child: Text(
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.0,
                            'Pintu Kamar',
                            style: TextStyle(
                                color: MyColors.blackText,
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),

                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            color: MyColors.softGreen,
                            borderRadius: BorderRadius.circular(500),
                          ),
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
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
                                      fontWeight: FontWeight.bold, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                          child: Text(
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.0,
                            '00:30',
                            style: TextStyle(
                                color: MyColors.blackText,
                                fontWeight: FontWeight.bold, fontSize: 36),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                          child: Text(
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.0,
                            'Masukan kode di bawah untuk proses membuka pintu',
                            style: TextStyle(
                                color: MyColors.blackText,
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                          child: Text(
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.0,
                            '009#',
                            style: TextStyle(
                                color: MyColors.green,
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
