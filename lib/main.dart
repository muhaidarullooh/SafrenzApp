import 'package:flutter/material.dart';
import 'package:safrenz/screens/check_in.dart';
import 'package:safrenz/screens/info_unit.dart';
import 'package:safrenz/screens/navigation/nav_screen_tenant.dart';
import 'package:safrenz/screens/onboarding.dart';
import 'package:safrenz/screens/splashscreen.dart';

import 'screens/navigation/screens_owner.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      home: NavScreenTenant(),
    );
  }
}
