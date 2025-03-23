import 'package:flutter/material.dart';
import 'package:safrenz/common/my_colors.dart';

import '../../common/my_style.dart';

class BoxButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final void Function()? onTap;
  final bool outline;
  final Widget? leading;
  final bool small;
  final double height;

  const BoxButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.onTap,
    this.leading,
    this.height = 48.0, // Default tinggi tombol
  })  : outline = false,
        small = false,
        super(key: key);

  const BoxButton.outline({
    required this.title,
    this.onTap,
    this.leading,
    this.height = 48.0,
  })  : disabled = false,
        busy = false,
        outline = true,
        small = false;

  const BoxButton.small({
    required this.title,
    this.onTap,
    this.leading,
    this.height = 36.0, // Default lebih kecil untuk small button
  })  : disabled = false,
        busy = false,
        outline = false,
        small = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: small ? null : double.infinity,
        height: height,
        padding: EdgeInsets.symmetric(
          vertical: small ? 6.0 : 12.0,
          horizontal: small ? 16.0 : 24.0,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: !outline ? MyColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: outline ? Border.all(color: MyColors.primary, width: 1) : null,
        ),
        child: !busy
            ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leading != null) leading!,
            if (leading != null) SizedBox(width: 6),
            Text(
              title,
              style: body1Style.copyWith(
                fontWeight: !outline ? FontWeight.bold : FontWeight.w400,
                fontSize: small ? 12.0 : 16.0,
                color: !outline ? Colors.white : MyColors.primary,
              ),
            ),
          ],
        )
            : CircularProgressIndicator(
          strokeWidth: 8,
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      ),
    );
  }
}
