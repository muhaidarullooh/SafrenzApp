import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/my_colors.dart';
import '../../../common/my_style.dart';

class HeaderAccount extends StatelessWidget {
  const HeaderAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: GestureDetector(
        onTap: () {
          // Tambahkan navigasi atau aksi yang diinginkan di sini
        },
        child: Card(
          elevation: 0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: Image.asset('assets/images/avatar.png'),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jhondoe',
                          style: body2Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'jondoe@gmail.com',
                          style: captionStyle.copyWith(color: MyColors.blackSoftText,),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.chevron_right, color: MyColors.grey, size: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}