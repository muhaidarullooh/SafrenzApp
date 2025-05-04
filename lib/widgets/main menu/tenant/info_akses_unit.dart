import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/widgets/main%20menu/tenant/device_akses.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_payment.dart';

import '../../../common/my_colors.dart';
import '../../../common/my_style.dart';

class InfoAksesUnit extends StatefulWidget {
  const InfoAksesUnit({Key? key}) : super(key: key);

  @override
  State<InfoAksesUnit> createState() => _InfoAksesUnitState();
}

class _InfoAksesUnitState extends State<InfoAksesUnit> {


  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi',
                    style: body1Style.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Untuk menampilkan fitur anda perlu scan kodeakses atau masukan kode dari pemilik unit',
                    style: body2Style.copyWith(
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Row(
                          children: [
                            SizedBox(
                              height: 60,
                              child: Image.asset('assets/images/img_1.png'),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Pilih menu masukan akses unit',
                                style: body2Style.copyWith(
                                ),
                                softWrap: true, // Memungkinkan teks untuk pindah ke baris baru
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 16),

                        Row(
                          children: [
                            SizedBox(
                              height: 60,
                              child: Image.asset('assets/images/img_2.png'),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Pilih masukan dengan scan QR atau masukkan kode',
                                style: body2Style.copyWith(
                                ),
                                softWrap: true, // Memungkinkan teks untuk pindah ke baris baru
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 16),

                        Row(
                          children: [
                            SizedBox(
                              height: 60,
                              child: Image.asset('assets/images/img_3.png'),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Jika pilih Scan QR , anda scan qrcode yang diberikan oleh pemilik unit',
                                style: body2Style.copyWith(
                                ),
                                softWrap: true, // Memungkinkan teks untuk pindah ke baris baru
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
