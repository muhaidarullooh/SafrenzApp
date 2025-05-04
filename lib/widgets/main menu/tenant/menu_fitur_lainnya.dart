import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/widgets/main%20menu/tenant/device_akses.dart';
import 'package:safrenz/widgets/main%20menu/tenant/menu_payment.dart';

import '../../../common/my_colors.dart';

class MenuFiturLainnya extends StatefulWidget {
  const MenuFiturLainnya({Key? key}) : super(key: key);

  @override
  State<MenuFiturLainnya> createState() => _MenuFiturLainnyaState();
}

class _MenuFiturLainnyaState extends State<MenuFiturLainnya> {


  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'FItur Lainnya',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18),
          ),
          MenuPayment(),

        ],
      ),
    );
  }
}
