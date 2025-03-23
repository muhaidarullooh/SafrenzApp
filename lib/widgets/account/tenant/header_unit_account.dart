import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safrenz/common/my_colors.dart';

class HeaderUnitAccount extends StatelessWidget {
  const HeaderUnitAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: GestureDetector(
        onTap: () {
          // Tambahkan navigasi atau aksi yang diinginkan di sini
        },
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(color: MyColors.softGrey),
          ),
          color: MyColors.backcolor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home Stay Alamanda',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColors.blackText,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Kota Bandung',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset('assets/images/iconarrowright.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
