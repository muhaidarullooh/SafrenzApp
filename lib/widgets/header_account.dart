import 'package:flutter/material.dart';
import 'package:safrenz/widgets/hdr_profile_account.dart';
import 'package:safrenz/widgets/hdr_unit_account.dart';

import 'hdr_profile.dart';
import 'hdr_unit.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gojek_design_flutter/theme.dart';

class Headeraccount extends StatelessWidget {
  const Headeraccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            // boxShadow: const [
            //   BoxShadow(color: Colors.grey, blurRadius: 0.3),
            // ],
          ),
          width: double.infinity,
          // child: const ListTile(
          //   title: Text('Demo Title'),
          //   subtitle: Text('This is a simple card in Flutter.'),
          // ),
          child: const Column(
            children: [
              Hdrprofileaccount(),
              Hdrunitaccount(),
            ],
          ),
        ));
  }
}
