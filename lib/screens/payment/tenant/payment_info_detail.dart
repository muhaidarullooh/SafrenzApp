import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/screens/payment/tenant/payment.dart';
import 'package:safrenz/screens/payment/tenant/payment_qris.dart';

import '../../../common/my_colors.dart';
import '../../../widgets/components/buttons.dart';

class PaymentInfoDetail extends StatelessWidget {
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
            _buildPaymentSummary(),
          ],
        ),
      ),
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
                  child: SvgPicture.asset('assets/images/menunggu_pay.svg'),
                ),
                SizedBox(width: 4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Menunggu Pembayaran', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: MyColors.yellow,)),
                    Text('Pembayaran kosan', style: TextStyle(fontSize: 12, color: MyColors.blackSoftText,)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Column(
              children: [
                _buildInfoRow('No Tagihan', 'INV20938309'),
                _buildInfoRow('Nomor Unit', '13'),
                _buildInfoRow('Periode', '12 Maret 2025'),
                _buildInfoRow('Harga Sewa', 'Rp1.000.000', isBold: true),
              ],
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
