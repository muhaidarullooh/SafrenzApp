import 'package:flutter/material.dart';
import 'package:safrenz/widgets/account/tenant/header_account.dart';
import 'package:safrenz/widgets/payment/tenant/list_tagihan.dart';
import 'package:safrenz/widgets/payment/tenant/list_tagihan_done.dart';

import '../../../common/my_colors.dart';
import '../../../widgets/main menu/tenant/device_akses.dart';



class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabScreen(),
    );
  }
}

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab
      child: Scaffold(
        backgroundColor: MyColors.backcolor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: MyColors.blackText,
          ),
          titleSpacing: 0,
          title: Text(
            'Pembayaran',
            style: TextStyle(
                color: MyColors.blackText,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48),
            child: Column(
              children: [
                TabBar(
                  labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: MyColors.primary,
                  unselectedLabelColor: MyColors.grey,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3, color: MyColors.primary,),
                  ),
                  tabs: [
                    Tab(text: "Tagihan"),
                    Tab(text: "Terbayar"),
                  ],
                ),
                Container(
                  height: 2,
                  color: MyColors.softGrey,
                ),
              ],
            ),
        ),
        ),
        body: TabBarView(
          children: [
            ListTagihan(),
            ListTagihanDone()
          ],
        ),
      ),
    );
  }
}
