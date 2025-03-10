// import 'dart:html';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:safrenz_app/common/my_colors.dart';
import 'package:safrenz_app/widgets/hdr_unit.dart';
import 'package:safrenz_app/widgets/hdr_profile.dart';

class Header_home extends StatefulWidget {
  const Header_home({Key? key}) : super(key: key);

  @override
  State<Header_home> createState() => _Header_homeState();
}

class _Header_homeState extends State<Header_home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Container(
            decoration:  BoxDecoration(
            gradient: LinearGradient(
            colors: [MyColors.grey.withOpacity(0.3), MyColors.white,],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            ),
              border: Border(
                left: BorderSide(
                  width: 0,
                  color: MyColors.white,
                  style: BorderStyle.solid,
                ),
                right: BorderSide(
                  width: 0,
                  color: MyColors.white,
                  style: BorderStyle.solid,
                ),
                top: BorderSide(
                  width: 0,
                  color: MyColors.white,
                  style: BorderStyle.solid,
                ),
                bottom: BorderSide(
                  width: 2,
                  color: MyColors.white,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Container(
              // padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              // clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: MyColors.primary,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
                image: const DecorationImage(
                  image: AssetImage("assets/images/imgback.png"),
                  fit: BoxFit.cover,
                  opacity: 200,
                  alignment: Alignment.topCenter,
                ),
              ),
              width: double.infinity,
              // child: const ListTile(
              //   title: Text('Demo Title'),
              //   subtitle: Text('This is a simple card in Flutter.'),
              // ),
              child: const Column(
                children: [
                  Hdrprofile(),
                  Hdrunit(),
                ],
              ),
            ),
        ));
  }
}
