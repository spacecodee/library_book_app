import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

class SCInputText extends StatelessWidget {
  final Color textColor;
  final double fontSize;
  final double hintTextSize;
  final String hintText;
  final bool isPassword;
  final EdgeInsetsGeometry padding;
  final TextInputType keyboardType;

  const SCInputText({
    Key? key,
    this.textColor = SCColors.accent,
    required this.fontSize,
    required this.hintText,
    this.isPassword = false,
    required this.hintTextSize,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: SCColors.secondaryMaterial[400],
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: isPassword,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: hintTextSize,
            color: SCColors.accentMaterial[500],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
