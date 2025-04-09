import 'package:flutter/material.dart';
import 'package:safrenz/screens/input_ktp.dart';
import 'package:safrenz/screens/navigation/nav_screen_tenant.dart';

import '../common/my_colors.dart';
import '../common/my_style.dart';
import '../widgets/components/buttons.dart';
import '../widgets/s_r_icon_icons.dart';


class InfoUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: MyColors.backcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Informasi',
                        style: Subtitle1Style.copyWith(
                          color: MyColors.blackText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/imagekos.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Home Stay Pak Supri',
                        style: Subtitle1Style.copyWith(
                          color: MyColors.blackText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Jln. Cilalawak Kadumekar, Maracang, Kec. Babakancikao, Kabupaten Purwakarta',
                              style: body2Style.copyWith(
                                color: MyColors.blackText,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
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
                            _buildInfoRow('Nomor lokasi', '12'),
                            _buildInfoRow('Total Unit', '20'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle('Fasilitas'),
                      _buildFacilityItem(Icons.house, 'Ukuran bangunan L 80m, P 100m'),
                      Divider(thickness: 1, color: MyColors.softGrey, height: 24),
                      _buildSectionTitle('Fasilitas kamar'),
                      _buildFacilityItem(Icons.king_bed, 'Kasur'),
                      _buildFacilityItem(Icons.table_bar, 'Meja'),
                      _buildFacilityItem(Icons.chair, 'Kursi'),
                      Divider(thickness: 1, color: MyColors.softGrey, height: 24),
                      _buildSectionTitle('Fasilitas kamar mandi'),
                      _buildFacilityItem(Icons.bathtub, 'Kamar mandi di luar'),
                      _buildFacilityItem(Icons.local_parking, 'Parkir motor'),
                      Divider(thickness: 1, color: MyColors.softGrey, height: 24),
                      _buildSectionTitle('Fasilitas Umum'),
                      _buildFacilityItem(Icons.local_parking, 'Parkir motor'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildFixedContinueButton(context),
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
          title:'Request Check-In',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InputKtp()),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: Subtitle1Style.copyWith(
          color: MyColors.blackText,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildFacilityItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: MyColors.blackText),
          SizedBox(width: 8),
          Text(text, style: body1Style.copyWith(color: MyColors.blackText,),),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: body1Style.copyWith(color: MyColors.blackText,),),
          Text(value, style: body1Style.copyWith(color: MyColors.blackText, fontWeight: FontWeight.bold,),),
        ],
      ),
    );
  }
}
