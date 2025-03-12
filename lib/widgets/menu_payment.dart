import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
// import 'package:safrenz/widgets/s_r_icon_icons.dart.dart';



class menupayment extends StatefulWidget {
  const menupayment({Key? key}) : super(key: key);

  @override
  State<menupayment> createState() => _menupaymentState();
}

class _menupaymentState extends State<menupayment> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      // height: 150,
      padding: const EdgeInsets.only(top: 16, bottom: 0),
      child: Stack(

        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyColors.backcolor.withOpacity(0.9),
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
                              Row(
                                children: [
                                  SizedBox(
                                    height: 36,
                                    child: SvgPicture.asset(
                                        'assets/images/menu_payslip.svg'),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        textScaleFactor: 1.0,
                                        'Pembayaran',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black, fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        textScaleFactor: 1.0,
                                        'Bayar jadi lebih praktis',
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
            ),
          ),
        ],
      ),
    );
  }
}
