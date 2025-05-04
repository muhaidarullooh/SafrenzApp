import 'package:flutter/material.dart';
import 'package:safrenz/widgets/payment/tenant/list_tagihan.dart';
import 'package:safrenz/widgets/payment/tenant/list_tagihan_done.dart';
import '../../../common/my_colors.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: MyColors.background(context),
        appBar: AppBar(
          backgroundColor: MyColors.background(context),
          leading: const BackButton(),
          titleSpacing: 0,
          title: const Text(
            'Pembayaran',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Column(
              children: [
                TabBar(
                  labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: MyColors.primary,
                  unselectedLabelColor: MyColors.grey(context),
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3, color: MyColors.primary),
                  ),
                  tabs: const [
                    Tab(text: "Tagihan"),
                    Tab(text: "Terbayar"),
                  ],
                ),
                Container(
                  height: 1,
                  color: MyColors.grey(context),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListTagihan(),
            ListTagihanDone(),
          ],
        ),
      ),
    );
  }
}
