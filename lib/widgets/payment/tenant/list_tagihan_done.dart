import 'package:flutter/material.dart';
import 'package:safrenz/widgets/payment/tenant/card_tagihan_done.dart';
import '../../../common/my_colors.dart';
import 'card_tagihan.dart';

void main() {
  runApp(ListTagihanDone());
}

class ListTagihanDone extends StatelessWidget {
  const ListTagihanDone({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return CardTagihanDone();
      },
    );
  }
}

