import 'package:flutter/material.dart';

import '../../common/my_colors.dart';
import '../../widgets/payment/owner/card_request.dart';

class Request extends StatefulWidget {
  const Request({Key? key}) : super(key: key);

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
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
                        'Request',
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

      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return CardRequest();
        },
      ),
    );
  }
}
