import 'package:flutter/material.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/shared/sc_colors.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/shared/sc_responsive.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/view/shared/widgets/texts/sc_text_style.dart';

class CsButtonIp extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;

  const CsButtonIp({
    Key? key,
    required this.text,
    required this.fontFamily,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: myResponsive.diagonalPercentage(5),
        vertical: myResponsive.diagonalPercentage(2),
      ),
      decoration: BoxDecoration(
        color: SCColors.primary,
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
    );
  }
}
