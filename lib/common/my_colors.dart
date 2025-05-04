import 'package:flutter/material.dart';

class MyColors {
  static Color blackText(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : const Color(0xFF1C1E1D);

  static Color white = const Color(0xFFFFFFFF);


  static Color primary = const Color(0xFF6C63FF);


  static Color red = const Color(0xFFE9001E);
  static Color green = const Color(0xFF4BC562);
  static Color softGreen = const Color(0xFFCCF8D4);
  static Color yellow = const Color(0xFFFFB000);

  static Color softYellow(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF3B3A30)
          : const Color(0xFFFFF8E8);

  static Color grey(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF999999)
          : const Color(0xFFBBBBBB);


  static Color blue = const Color(0xFF1976D2);

  static Color background(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF121212)
          : const Color(0xFFF9FAFB);

  static Color surface(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF1E1E2F)
          : const Color(0xFFFFFFFF);

  static Color nav(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF1E1E2F)
          : const Color(0xFFFFFFFF);

  static Color shadow(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF1E1E2F)
          : const Color(0xFFBBBBBB);

  static Color border(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF242436)
          : const Color(0xFFF3F3F3);

}
