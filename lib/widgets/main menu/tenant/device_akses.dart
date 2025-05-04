import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/detailakseslock.dart';
import 'package:safrenz/widgets/s_r_icon_icons.dart';

import '../../../common/my_style.dart';

class DeviceAkses extends StatelessWidget {
  const DeviceAkses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10), // Mengatur space atas dan bawah
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            builder: (context) {
              return SizedBox(
                height: 500, // Atur tinggi sesuai kebutuhan Anda
                child: DetailAksesLock(),
              );
            },
          );
        },

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: BorderSide(color: MyColors.border(context)),
          ),
          color: MyColors.surface(context),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Center(  // Menambahkan Center di sini untuk men-center semua elemen
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Menambahkan alignmen vertikal ke tengah
                crossAxisAlignment: CrossAxisAlignment.start, // Menambahkan alignmen horizontal ke tengah
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: screenWidth * 0.08,
                        backgroundColor: MyColors.background(context),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/images/imagedevicelock.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: MyColors.softGreen,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              'ON',
                              style: TextStyle(
                                color: MyColors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Menyelaraskan konten di dalam row ke tengah
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Menyelaraskan teks di dalam kolom ke tengah
                        children: [
                          const Text(
                            'Pintu Kamar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '3 h ago',
                              style: captionStyle.copyWith(
                                color: MyColors.blackText(context),)
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start, // Menyelaraskan elemen di dalam row ke tengah
                            children: [
                              Icon(SRIcon.battery, color: MyColors.green, size: 18),
                              const SizedBox(width: 4),
                              Text(
                                '100%',
                                  style: captionStyle.copyWith(
                                    color: MyColors.green,
                                    fontWeight: FontWeight.bold,)
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
