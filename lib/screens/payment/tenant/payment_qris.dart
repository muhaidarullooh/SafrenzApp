import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/screens/payment/tenant/payment.dart';
import 'package:safrenz/screens/payment/tenant/payment_info_detail.dart';
import 'package:safrenz/screens/payment/tenant/payment_qris.dart';
import 'package:safrenz/screens/payment/tenant/paymentsuccess.dart';

import '../../../common/my_colors.dart';
import '../../../widgets/components/buttons.dart';
import '../../../widgets/s_r_icon_icons.dart';

class PaymentQris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Text(
          'Menunggu Pembayaran',
          style: TextStyle(

              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Tambahkan aksi pembatalan di sini
            },
            child: Text(
              'Batalkan',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: MyColors.background(context),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPaymentMethod(context),
            SizedBox(height: 8),
            _buildQrimage(context),
            SizedBox(height: 8),
            _buildPaymentInstructions(context)
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildFixedstatusButton(context),
          _buildFixedDownloadQRButton(context),
        ],
      ),
      backgroundColor: MyColors.background(context),
    );
  }

  Widget _buildPaymentMethod(BuildContext context) {
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
            Container(
              decoration: BoxDecoration(
                color: MyColors.surface(context),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        SRIcon.clock,
                        color: MyColors.yellow,
                        size: 18,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Sisa waktu pembayaran anda ",
                      ),
                      Text(
                        "10:00",
                        style: TextStyle(fontWeight: FontWeight.bold, color: MyColors.yellow),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: MyColors.background(context),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: MyColors.border(context)
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentInfoDetail(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lihat detail transaksi',
                        style: TextStyle(),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16,),
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

  Widget _buildQrimage(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: MyColors.border(context)),),
      color: MyColors.surface(context),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 36,
                  child: SvgPicture.asset('assets/images/qris_logo.svg'),
                ),
                SizedBox(
                  height: 36,
                  child: SvgPicture.asset('assets/images/gpn_logo.svg'),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Safrenz",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              "Rp1.001.000",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                  'assets/images/qr_code_image.png'),
            ),
            SizedBox(height: 8),
            Text(
              "Menerima pembayaran melalui aplikasi dibawah ini",
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              "E-Wallet atau M-Banking",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentInstructions(BuildContext context) {
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
            Text("Petunjuk pembayaran dengan QRIS", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("1. Buka aplikasi E-Wallet atau M-Banking yang memiliki fasilitas scan/upload QRIS"),
            Text("2. Unduh QRIS atau Scan gambar QRIS"),
            Text("3. Periksa kembali detail pembayaran"),
            Text("4. Jika sudah sesuai, konfirmasi dan bayar"),
          ],
        ),
      ),
    );
  }

  Widget _buildFixedstatusButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MyColors.surface(context),
        // border: Border(
        //   top: BorderSide(color: MyColors.softGrey(context) ,width: 1),
        // ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: BoxButton.outline(
          title:'Cek Status Pembayaran',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Paymentsuccess()),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFixedDownloadQRButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: MyColors.surface(context),
      ),
      child: SizedBox(
        width: double.infinity,
        child: BoxButton(
          title:'Download QR-Code',
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
