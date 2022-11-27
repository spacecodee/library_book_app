import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ScButtonIp extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final bool haveBorder;
  final Function() onTap;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final Color? borderColor;

  const ScButtonIp({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.onTap,
    this.padding,
    this.width,
    this.borderColor,
    this.haveBorder = false,
    this.fontFamily = 'Graphik',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: (padding == null)
            ? EdgeInsets.symmetric(
                horizontal: myResponsive.diagonalPercentage(5),
                vertical: myResponsive.diagonalPercentage(2),
              )
            : padding,
        //add border line
        decoration: !haveBorder
            ? BoxDecoration(
                color: borderColor ?? SCColors.primary,
                borderRadius: BorderRadius.circular(5),
              )
            : BoxDecoration(
                border: Border.all(
                  color: borderColor ?? SCColors.accent,
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
