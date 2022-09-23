import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ScButtonFlat extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final bool haveBorder;
  final FontWeight fontWeight;
  final Function() onTap;

  const ScButtonFlat({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.onTap,
    this.fontFamily = 'Graphik',
    this.haveBorder = false,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: SCTextStyle(
          text: text,
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: SCColors.accentMaterial,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
