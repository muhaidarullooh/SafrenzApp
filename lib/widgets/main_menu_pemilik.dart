import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/my_colors.dart';
import '../common/my_style.dart';
import '../screens/daftar.dart';

class MainMenuPemilik extends StatelessWidget {
  const MainMenuPemilik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: MyColors.softGrey),
      ),
      color: MyColors.backcolor,
      elevation: 0, // Tambahkan shadow jika ingin efek floating
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => daftar()));
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 48,
                    child: Image.asset('assets/images/onb2.png'),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textScaleFactor: 1.0,
                        'Pemilik atau Pengelola',
                        style: body1Style.copyWith(color: MyColors.blackText),
                      ),
                      Text(
                        textScaleFactor: 1.0,
                        'Kelola unit dll',
                        style: captionStyle.copyWith(color: MyColors.blackText),
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
    );
  }
}