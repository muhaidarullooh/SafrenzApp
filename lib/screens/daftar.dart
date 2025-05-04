import 'package:flutter/material.dart';
import 'package:safrenz/screens/check_in.dart';
import 'package:flutter_svg/svg.dart';

import '../common/my_colors.dart';
import '../widgets/components/buttons.dart';
import '../widgets/components/input_field.dart';

class daftar extends StatefulWidget {
  const daftar({Key? key}) : super(key: key);

  @override
  State<daftar> createState() => _daftarState();
}

class _daftarState extends State<daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background(context),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.background(context),
        leading: BackButton(
        ),
        title: Text(
          'Daftar',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  BoxInputField(
                    controller: TextEditingController(),
                    placeholder: 'Alamat email', labelText: 'Alamat email',
                  ),
                  BoxInputField(
                    controller: TextEditingController(),
                    placeholder: 'Nama Lengkap', labelText: 'Nama Lengkap',
                  ),

                  BoxInputField(
                    controller: TextEditingController(),
                    placeholder: 'Nomor Ponsel', labelText: 'Nomor Ponsel',
                  ),


                ],
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: MyColors.surface(context),
        ),
        padding: EdgeInsets.all(16.0),
        child: BoxButton(
          title:'Lanjutkan',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CheckIn()),
            );
          },
        ),
      ),
    );
  }
}
