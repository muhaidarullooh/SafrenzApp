import 'package:flutter/material.dart';
import 'package:safrenz/screens/input_ktp.dart';

import '../common/my_colors.dart';
import '../common/my_style.dart';
import '../widgets/components/buttons.dart';

class InfoUnit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: MyColors.background(context),
        elevation: 0,
      ),
      backgroundColor: MyColors.background(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: MyColors.surface(context),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: MyColors.border(context)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Informasi',
                        style: Subtitle1Style.copyWith(
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
                          color: MyColors.background(context),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: MyColors.border(context)),
                        ),
                        child: Column(
                          children: [
                            _buildInfoRow(context, 'Nomor lokasi', '12'),
                            _buildInfoRow(context, 'Total Unit', '20'),
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
                  color: MyColors.surface(context),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: MyColors.border(context)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle(context, 'Fasilitas'),
                      _buildFacilityItem(context, Icons.house, 'Ukuran bangunan L 80m, P 100m'),
                      Divider(thickness: 1, color: MyColors.border(context), height: 24),
                      _buildSectionTitle(context, 'Fasilitas kamar'),
                      _buildFacilityItem(context, Icons.king_bed, 'Kasur'),
                      _buildFacilityItem(context, Icons.table_bar, 'Meja'),
                      _buildFacilityItem(context, Icons.chair, 'Kursi'),
                      Divider(thickness: 1, color: MyColors.border(context), height: 24),
                      _buildSectionTitle(context, 'Fasilitas kamar mandi'),
                      _buildFacilityItem(context, Icons.bathtub, 'Kamar mandi di luar'),
                      _buildFacilityItem(context, Icons.local_parking, 'Parkir motor'),
                      Divider(thickness: 1, color: MyColors.border(context), height: 24),
                      _buildSectionTitle(context, 'Fasilitas Umum'),
                      _buildFacilityItem(context, Icons.local_parking, 'Parkir motor'),
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
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      decoration: BoxDecoration(
        color: MyColors.surface(context),
        // border: Border(
        //   top: BorderSide(color: MyColors.border(context), width: 1),
        // ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: BoxButton(
          title: 'Request Check-In',
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

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: Subtitle1Style.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildFacilityItem(BuildContext context, IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, size: 20,),
          SizedBox(width: 8),
          Text(
            text,
            style: body1Style.copyWith(),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: body1Style.copyWith()),
          Text(value, style: body1Style.copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
