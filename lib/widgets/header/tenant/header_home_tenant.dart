// import 'dart:html';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/header/tenant/header_add_unit.dart';
import 'package:safrenz/widgets/header/tenant/info_unit.dart';
import 'package:safrenz/widgets/header/tenant/header_profile_tenant.dart';

class HeaderHomeTenant extends StatefulWidget {
  const HeaderHomeTenant({Key? key}) : super(key: key);

  @override
  State<HeaderHomeTenant> createState() => _HeaderHomeTenantState();
}

class _HeaderHomeTenantState extends State<HeaderHomeTenant> {
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
          padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
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
                  HeaderProfileTenant(),
                  SizedBox(
                    height: 16,
                  ),
                  InfoUnit(),
                ],
              ),
            ),
        ));
  }
}
