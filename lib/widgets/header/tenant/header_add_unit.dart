import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/check_in.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

import '../../../common/my_style.dart';

class HeaderAddUnit extends StatefulWidget {
  const HeaderAddUnit({Key? key}) : super(key: key);

  @override
  State<HeaderAddUnit> createState() => _HeaderAddUnitState();
}

class _HeaderAddUnitState extends State<HeaderAddUnit> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CheckIn()),
        );// Ganti dengan aksi yang diinginkan
      },
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: MyColors.surface.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
                border: Border.all(
                  color: MyColors.surface2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Jarak maksimal antara teks dan ikon
                  crossAxisAlignment: CrossAxisAlignment.center, // Pusatkan ikon vertikal
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Masukkan akses unit',
                          style: body1Style.copyWith(
                            color: MyColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Minta kode akses ke pemilik unit',
                          style: captionStyle.copyWith(color: MyColors.white),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/images/iconarrowright.svg',
                      height: 24, // Sesuaikan ukuran jika perlu
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
