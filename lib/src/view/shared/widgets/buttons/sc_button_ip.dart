import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class CsButtonIp extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final bool haveBorder;
  final Function() onTap;

  const CsButtonIp({
    Key? key,
    required this.text,
    required this.fontFamily,
    required this.fontSize,
    required this.onTap,
    this.haveBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: myResponsive.diagonalPercentage(5),
          vertical: myResponsive.diagonalPercentage(2),
        ),
        //add border line
        decoration: !haveBorder
            ? BoxDecoration(
                color: SCColors.primary,
                borderRadius: BorderRadius.circular(5),
              )
            : BoxDecoration(
                border: Border.all(
                  color: SCColors.accent,
                  width: myResponsive.diagonalPercentage(0.1),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
        child: Center(
          child: SCTextStyle(
            text: text,
            fontFamily: fontFamily,
            fontSize: fontSize,
            color: SCColors.accentMaterial,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
