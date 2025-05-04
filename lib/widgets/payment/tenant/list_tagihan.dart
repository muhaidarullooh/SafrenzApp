import 'package:flutter/material.dart';
import '../../../common/my_colors.dart';
import 'card_tagihan.dart';

void main() {
  runApp(ListTagihan());
}

class ListTagihan extends StatelessWidget {
  const ListTagihan({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return CardTagihan();
      },
    );
  }
}

