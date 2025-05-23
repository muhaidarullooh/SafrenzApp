// import 'dart:html';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';
import 'package:safrenz/widgets/header/tenant/header_add_akses.dart';
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
            colors: [MyColors.shadow(context).withOpacity(0.3), MyColors.background(context),],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            ),
              border: Border(
                left: BorderSide(
                  width: 0,
                  color: MyColors.background(context),
                  style: BorderStyle.solid,
                ),
                right: BorderSide(
                  width: 0,
                  color: MyColors.background(context),
                  style: BorderStyle.solid,
                ),
                top: BorderSide(
                  width: 0,
                  color: MyColors.background(context),
                  style: BorderStyle.solid,
                ),
                bottom: BorderSide(
                  width: 2,
                  color: MyColors.background(context),
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
                  alignment: Alignment.topCenter,
                  colorFilter: ColorFilter.mode(
                    Color.fromRGBO(108, 99, 255, 0.7), // putih dengan 30% opacity
                    BlendMode.srcATop,
                  ),
                ),
              ),

              width: double.infinity,
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
