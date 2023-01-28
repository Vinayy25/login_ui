import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/colors/pallets.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  final VoidCallback onPressed;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 100,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Pallete.whiteColor, fontSize: 17),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: horizontalPadding,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            )),
      ),
    );
  }
}
