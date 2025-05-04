import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/payment/tenant/payment.dart';

import '../../../common/my_style.dart';
import '../../s_r_icon_icons.dart';

class MenuNotification extends StatefulWidget {
  const MenuNotification({Key? key}) : super(key: key);

  @override
  State<MenuNotification> createState() => _MenuNotificationState();
}

class _MenuNotificationState extends State<MenuNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.fromLTRB(14, 0, 14, 14),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: MyColors.yellow),
        ),
        color: MyColors.softYellow(context),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Payment()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16),

            child: Row(
              children: [
                Icon(SRIcon.calendar, color: MyColors.yellow, size: 24),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reminder Pembayaran",
                        style: body2Style.copyWith(
                          color: MyColors.yellow, fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Segera lakukan pembayaran sebelum tgl jatuh tempo (20 Maret 2025)",
                        style: captionStyle.copyWith(
                          color: MyColors.yellow,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right, color: MyColors.yellow, size: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
