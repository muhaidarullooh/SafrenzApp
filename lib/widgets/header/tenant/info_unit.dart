import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

import '../../../common/my_style.dart';

class InfoUnit extends StatefulWidget {
  const InfoUnit({Key? key}) : super(key: key);

  @override
  State<InfoUnit> createState() => _InfoUnitState();
}

class _InfoUnitState extends State<InfoUnit> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      // height: 150,
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Stack(

        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyColors.primary.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Home Stay Alamanda',
                          style: body1Style.copyWith(color: MyColors.white, fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Kota Bandung',
                          style: body2Style.copyWith(color: MyColors.white),
                        ),
                      ],
                    ),
                    Container(
                      width: 1, // Ketebalan garis
                      height: 50, // Tinggi garis
                      color: MyColors.white // Warna garis
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'No.Unit',
                          style: body2Style.copyWith(color: MyColors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '12',
                          style: body1Style.copyWith(color: MyColors.white, fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
