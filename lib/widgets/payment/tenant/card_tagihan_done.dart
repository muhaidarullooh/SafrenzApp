import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/payment/tenant/payment_info.dart';

import '../../../common/my_style.dart';
import '../../../screens/detailakseslock.dart';
import '../../components/buttons.dart';

class CardTagihanDone extends StatelessWidget {
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pembayaran Sewa',
                    style: body2Style.copyWith(color: MyColors.grey),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: MyColors.green,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Success',
                      style: captionStyle.copyWith(color: MyColors.white, fontWeight: FontWeight.bold,),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                'Tagihan bulan Maret 2025',
                style: body1Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold,),
              ),

              SizedBox(height: 4),
              Text(
                'No. INV20938309',
                style: body2Style.copyWith(color: MyColors.grey),
              ),
              Text(
                'Date 10 Maret 2025',
                style: body2Style.copyWith(color: MyColors.grey),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 100, // Sesuaikan dengan kebutuhan agar button pendek
                  child: BoxButton.smallOutline(
                    title: 'Detail',
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
