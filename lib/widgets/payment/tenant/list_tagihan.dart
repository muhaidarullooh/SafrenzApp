import 'package:flutter/material.dart';
import '../../../common/my_colors.dart';
import 'card_tagihan.dart';

void main() {
  runApp(ListTagihan());
}

class ListTagihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: MyColors.backcolor,
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return CardTagihan();
          },
        ),
      ),
    );
  }
}
