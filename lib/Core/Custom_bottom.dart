import 'package:bokly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      required this.backgroundColor,
      required this.textcolor,
      this.borderRadius,
      required this.text});
  final Color backgroundColor, textcolor;
  final BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12)),
            backgroundColor: backgroundColor,
          ),
          child: Text(
            text,
            style: Styles.textstyle18.copyWith(color: textcolor),
          )),
    );
  }
}
