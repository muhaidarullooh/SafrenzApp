import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/screens/payment/tenant/payment.dart';
import 'package:safrenz/screens/payment/tenant/payment_qris.dart';

import '../../../common/my_colors.dart';
import '../../../widgets/components/buttons.dart';

class PaymentInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          'Info Pembayaran',
          style: TextStyle(
              color: MyColors.blackText,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPaymentInfoCard(),
            SizedBox(height: 8),
            _buildPaymentMethod(context),
            SizedBox(height: 8),
            _buildPaymentSummary(),
          ],
        ),
      ),
      bottomNavigationBar: _buildFixedContinueButton(context),
      backgroundColor: MyColors.backcolor,
    );
  }

  Widget _buildPaymentInfoCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 36,
                  child: SvgPicture.asset('assets/images/info_pay.svg'),
                ),
                SizedBox(width: 4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pembayaran Sewa', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('Kosan Alamanda', style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: MyColors.backcolor,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: MyColors.softGrey,
                ),
              ),
              child: Column(
                children: [
                  _buildInfoRow('No Tagihan', 'INV20938309'),
                  _buildInfoRow('Nomor Unit', '13'),
                  _buildInfoRow('Periode', '12 Maret 2025'),
                  _buildInfoRow('Harga Sewa', 'Rp1.000.000', isBold: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethod(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Metode Pembayaran', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: MyColors.backcolor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: MyColors.softGrey,
                ),
              ),
              child: InkWell(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Payment(),
                //     ),
                //   );
                // },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pilih metode pembayaran',
                        style: TextStyle(color: MyColors.grey),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16, color: MyColors.grey),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentSummary() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rincian pembayaran', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            _buildInfoRow('Harga kos /bulan', 'Rp1.000.000'),
            _buildInfoRow('Biaya layanan', 'Rp1.000'),
            Divider(thickness: 1, color: MyColors.softGrey, height: 20),
            _buildInfoRow('Total pembayaran', 'Rp1.001.000', isBold: true),
          ],
        ),
      ),
    );
  }

  Widget _buildFixedContinueButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10,),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: MyColors.softGrey, width: 1),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: BoxButton(
          title:'Lanjutkan',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentQris()),
            );
          },
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
          Text(label, style: TextStyle(color: Colors.grey[700])),
          Text(value, style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
