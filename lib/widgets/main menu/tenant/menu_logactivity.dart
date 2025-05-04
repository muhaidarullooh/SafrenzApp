import 'package:flutter/material.dart';
import 'package:safrenz/widgets/main%20menu/tenant/log_activity.dart';

import '../../../common/my_colors.dart';

class MenuLogactivity extends StatefulWidget {
  const MenuLogactivity({Key? key}) : super(key: key);

  @override
  State<MenuLogactivity> createState() => _MenuLogactivityState();
}

class _MenuLogactivityState extends State<MenuLogactivity> {

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
            textScaleFactor: 1.0,
            'Log Activity',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Column(
            children: [

              SingleChildScrollView(

                scrollDirection: Axis.horizontal,

                child: Row(

                  children: [

                    LogActivity(),
                    LogActivity(),
                    LogActivity(),
                    LogActivity(),

                  ],

                ),

              ),

            ],
          )

        ],
      ),
    );
  }
}
