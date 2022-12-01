import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

class ScInputSearch extends StatelessWidget {
  final Color textColor;
  final Color? hintTextColor;
  final double fontSize;
  final double hintTextSize;
  final String hintText;
  final bool isPassword;
  final EdgeInsetsGeometry padding;
  final TextInputType keyboardType;
  final double width;
  final double height;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  const ScInputSearch({
    Key? key,
    this.textColor = SCColors.accent,
    this.hintTextColor = SCColors.accentMaterial,
    required this.fontSize,
    required this.hintText,
    this.isPassword = false,
    required this.hintTextSize,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    this.keyboardType = TextInputType.text,
    required this.width,
    this.height = 45,
    this.onChanged,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: padding,
      height: height,
      decoration: BoxDecoration(
        color: SCColors.secondaryMaterial[400],
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: hintTextColor),
          const SizedBox(width: 10),
          SizedBox(
            width: width - 60,
            child: TextFormField(
              onChanged: onChanged,
              onSaved: onSaved,
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
                  color: hintTextColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
