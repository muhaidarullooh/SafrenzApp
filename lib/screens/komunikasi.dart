import 'package:flutter/material.dart';

import '../common/my_colors.dart';

class activity extends StatefulWidget {
  const activity({Key? key}) : super(key: key);

  @override
  State<activity> createState() => _activityState();
}

class _activityState extends State<activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: MyColors.background(context),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Komunikasi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // ===================== BODY ========================== //
      backgroundColor: MyColors.background(context),

      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headeraccount(),
              const SizedBox(
                height: 24,
              ),
              // Attendance_out(),
              // SizedBox(
              //   height: 24,
              // ),
              // Info(),
              Container(
                // padding: const EdgeInsets.symmetric(vertical: 16),

                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Info(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [

                          ],
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
