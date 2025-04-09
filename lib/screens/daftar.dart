import 'package:flutter/material.dart';
import 'package:safrenz/screens/check_in.dart';
import 'package:flutter_svg/svg.dart';

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
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          'Daftar',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
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
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
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
