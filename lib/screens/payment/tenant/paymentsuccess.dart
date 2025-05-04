import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/screens/payment/tenant/payment.dart';
import 'package:safrenz/widgets/log_activity_device.dart';
import '../../../widgets/components/buttons.dart';
import '../../../widgets/s_r_icon_icons.dart';

class Paymentsuccess extends StatefulWidget {
  const Paymentsuccess({Key? key}) : super(key: key);

  @override
  State<Paymentsuccess> createState() => _PaymentsuccessState();
}

class _PaymentsuccessState extends State<Paymentsuccess> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: MyColors.primary,
        // leading: const BackButton(
        //   color: Colors.black,
        // ),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Container(
                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  // height: 150,
                  // width: 340,
                  decoration: BoxDecoration(
                    color: MyColors.surface(context),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: MyColors.border(context)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 48,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: SvgPicture.asset('assets/images/succes_pay.svg'),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                          child: Text(
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.0,
                            'Pembayaran berhasil',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Total Pembayaran',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Rp1.001.00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),

                        Divider(thickness: 1, color: MyColors.border(context), height: 20),


                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Rincian pembayaran', style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 8),
                              _buildInfoRow('Harga kos /bulan', 'Rp1.000.000'),
                              _buildInfoRow('Biaya layanan', 'Rp1.000'),
                              Divider(thickness: 1, color: MyColors.border(context),height: 20),
                              _buildInfoRow('Total pembayaran', 'Rp1.001.000', isBold: true),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: BoxButton(
                            title:'Selesai',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Payment()),
                              );
                            },
                          ),
                        ),



                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
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