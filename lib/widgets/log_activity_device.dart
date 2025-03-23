import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/common/my_style.dart';
import 'package:safrenz/screens/detailakseslock.dart';

class LogActivityDevice extends StatefulWidget {
  const LogActivityDevice({super.key});

  @override
  State<LogActivityDevice> createState() => LogActivityDeviceState();
}

class LogActivityDeviceState extends State<LogActivityDevice> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Card(
        elevation: 0, // Menambahkan bayangan di bawah card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), // Sudut yang lebih bulat
        ),
        color: MyColors.white,
        child: InkWell(
          // borderRadius: BorderRadius.circular(16), // Efek klik dengan borderRadius yang sama
          // onTap: () {
          //   // Navigator.push(
          //   //   context,
          //   //   MaterialPageRoute(
          //   //     builder: (context) => const DetailAksesLock(),
          //   //   ),
          //   // );
          // },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
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
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jhondoe....',
                      style: captionStyle.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '18:00',
                      style: OverlineStyle.copyWith(color: MyColors.blackText,),
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
