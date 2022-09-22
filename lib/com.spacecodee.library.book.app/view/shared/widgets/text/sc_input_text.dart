import 'package:flutter/material.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/shared/sc_colors.dart';

class SCInputText extends StatelessWidget {
  final Color textColor;
  final double fontSize;
  final double hintTextSize;
  final String hintText;
  final bool isPassword;

  const SCInputText({
    Key? key,
    this.textColor = SCColors.accent,
    required this.fontSize,
    required this.hintText,
    this.isPassword = false,
    required this.hintTextSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: SCColors.secondaryMaterial[400],
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        textAlignVertical: isPassword ? TextAlignVertical.center : TextAlignVertical.top,
        obscureText: isPassword,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
        decoration: InputDecoration(
          suffixIcon: isPassword
              ? const Icon(Icons.remove_red_eye_outlined,
                  size: 15,
                  color: SCColors.accent,
                  textDirection: TextDirection.rtl)
              : null,
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
