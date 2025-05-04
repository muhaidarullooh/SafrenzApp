import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

import '../../../common/my_style.dart';

class InfoUpgradePricing extends StatefulWidget {
  const InfoUpgradePricing({Key? key}) : super(key: key);

  @override
  State<InfoUpgradePricing> createState() => _InfoUpgradePricingState();
}

class _InfoUpgradePricingState extends State<InfoUpgradePricing> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Upgrade Pricing Card diklik!"); // Ganti dengan aksi yang diinginkan
      },
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
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
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Jarak maksimal antara teks dan ikon
                  crossAxisAlignment: CrossAxisAlignment.center, // Pusatkan ikon vertikal
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upgrade paket anda',
                          style: body1Style.copyWith(
                            color: MyColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Untuk bebas tambah jumlah lokasi & unit',
                          style: captionStyle.copyWith(color: MyColors.white),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Paket free (Max 1 lokasi & 10 unit)',
                          style: OverlineStyle.copyWith(color: MyColors.yellow),
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
