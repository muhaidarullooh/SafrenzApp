import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/payment/tenant/payment_info.dart';

import '../../../common/my_style.dart';
import '../../components/buttons.dart';

class CardRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row Pertama - Info user
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
                        style: body2Style.copyWith(
                          color: MyColors.blackText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        '08112092029',
                        style: captionStyle.copyWith(
                          color: MyColors.blackSoftText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Vertical dots di kiri, jadi baris baru
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Posisi kiri untuk dots
                    SizedBox(
                      width: 36, // sejajar dengan avatar
                      child: VerticalDots(
                        count: 5,
                        size: 3,
                        spacing: 4,
                        color: MyColors.grey,
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Kosong sebagai placeholder agar sejajar
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),

              // Row Kedua - Info kosan
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: Image.asset('assets/images/avatar.png'),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kosan Pak supri',
                          style: body2Style.copyWith(
                            color: MyColors.blackText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Jln. Cilalawak Kadumekar, Maracang, Kec. Babakancikao, Kabupaten Purwakarta...',
                          style: captionStyle.copyWith(
                            color: MyColors.blackSoftText,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(thickness: 1, color: MyColors.softGrey, height: 36),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tanggal request',
                    style: body2Style.copyWith(color: MyColors.grey),
                  ),
                  Text(
                    '12 Agustus 2023 (18:00)',
                    style: body2Style.copyWith(color: MyColors.blackText),
                  ),

                ],
              ),


              SizedBox(height: 16),

              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  child: BoxButton(
                    title: 'Lihat data',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(builder: (context) => PaymentInfo()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget vertical dots
class VerticalDots extends StatelessWidget {
  final int count;
  final double size;
  final Color color;
  final double spacing;

  const VerticalDots({
    super.key,
    this.count = 3,
    this.size = 6,
    this.color = Colors.grey,
    this.spacing = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        count,
            (index) => Padding(
          padding: EdgeInsets.symmetric(vertical: spacing / 2),
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
