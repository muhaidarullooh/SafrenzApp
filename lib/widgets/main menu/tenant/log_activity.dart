import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/detailakseslock.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

import '../../../common/my_style.dart';

class LogActivity extends StatefulWidget {
  const LogActivity({Key? key}) : super(key: key);

  @override
  State<LogActivity> createState() => _LogActivityState();
}

class _LogActivityState extends State<LogActivity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailAksesLock(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: MyColors.backcolor,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: MyColors.softGrey,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Avatar Section
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: const Color(0xFFEDEDED),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/avatar.png',
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Text Content Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Jhondoe',
                      style: body2Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '18:00',
                      style: body2Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Pintu depan',
                      style: captionStyle.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Berhasil',
                      style: body2Style.copyWith(color: MyColors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
