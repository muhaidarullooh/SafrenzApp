import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_style.dart';

import '../../../common/my_colors.dart';
// import 'package:gojek_design_flutter/theme.dart';

class HeaderProfileTenant extends StatelessWidget {
  const HeaderProfileTenant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Stack(
        // scrollDirection: Axis.horizontal,
        // clipBehavior: Clip.none,
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
                        children: [
                          Text(
                            'Jhondoe',
                            style: body2Style.copyWith(color: MyColors.white, fontWeight: FontWeight.bold,),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'jondoe@gmail.com',
                            style: captionStyle.copyWith(color: MyColors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
