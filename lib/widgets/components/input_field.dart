import 'package:flutter/material.dart';
import '../../common/my_colors.dart';

class BoxInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final String labelText;  // Menambahkan labelText
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTapped;
  final TextInputType keyboardType;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  BoxInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    required this.labelText,  // Mengharuskan labelText
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),  // Padding sesuai permintaan
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(height: 1),
        obscureText: password,
        decoration: InputDecoration(
          labelText: labelText,  // Menambahkan labelText
          labelStyle: TextStyle(color: Colors.black),
          hintText: placeholder,
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          filled: true,
          fillColor: MyColors.white,
          prefixIcon: leading,
          suffixIcon: trailing != null
              ? GestureDetector(
            onTap: trailingTapped,
            child: trailing,
          )
              : null,
          border: circularBorder.copyWith(
            borderSide: BorderSide(color: MyColors.softGrey),
          ),
          errorBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: MyColors.red),
          ),
          focusedBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: MyColors.primary),
          ),
          enabledBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: MyColors.softGrey),
          ),
        ),
      ),
    );
  }
}
