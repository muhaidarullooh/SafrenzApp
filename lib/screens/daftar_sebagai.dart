import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:safrenz/widgets/main_menu_penyewa.dart';

import '../widgets/main_menu_pemilik.dart';

class daftarsebagai extends StatefulWidget {
  const daftarsebagai({Key? key}) : super(key: key);

  @override
  State<daftarsebagai> createState() => _daftarsebagaiState();
}

class _daftarsebagaiState extends State<daftarsebagai> {
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
      ),
      body: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MainMenuPenyewa(),
                  const SizedBox(
                    height: 16,
                  ),
                  MainMenuPemilik()
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
