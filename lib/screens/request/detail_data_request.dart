import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/screens/payment/tenant/payment.dart';
import 'package:safrenz/screens/payment/tenant/payment_qris.dart';

import '../../common/my_colors.dart';
import '../../common/my_style.dart';
import '../../widgets/components/buttons.dart';

class DetailDataRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: MyColors.background(context),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPaymentInfoCard(context),
            SizedBox(height: 8),
            _buildPaymentSummary(context),
          ],
        ),
      ),
      bottomNavigationBar: _buildFixedContinueButton(context),
      backgroundColor: MyColors.background(context),
    );
  }

  Widget _buildPaymentInfoCard(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: MyColors.border(context)),),
      color: MyColors.surface(context),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Home Stay Pak Supri',
              style: body1Style.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Jln. Cilalawak Kadumekar, Maracang, Kec. Babakancikao, Kabupaten Purwakarta',
                    style: captionStyle.copyWith(
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildPaymentSummary(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: MyColors.border(context)),),
      color: MyColors.surface(context),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Data request', style: body1Style.copyWith(
              fontWeight: FontWeight.bold,),),
            SizedBox(height: 8),
            _buildInfoRow('Nama', 'Jhon doe', isBold: true),
            _buildInfoRow('Nomor Ponsel', '081111202909', isBold: true),
            _buildInfoRow('Nomor KTP', '6210290930006', isBold: true),
            Divider(thickness: 1, color: MyColors.border(context),height: 24),
            SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/ktpsample.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildFixedContinueButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      decoration: BoxDecoration(
        color: MyColors.surface(context),

      ),
      child: SizedBox(
        width: double.infinity,
        child: BoxButton(
          title: 'Masukkan akses kamar',
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => PaymentQris()),
          //   );
          // },
        ),
      ),
    );
  }



  Widget _buildInfoRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle()),
          Text(value, style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
