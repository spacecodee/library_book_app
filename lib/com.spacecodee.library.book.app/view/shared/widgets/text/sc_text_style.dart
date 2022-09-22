import 'package:flutter/material.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/shared/sc_colors.dart';

class SCTextStyle extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const SCTextStyle(
      {Key? key,
      required this.text,
      this.fontFamily = 'Graphik',
      required this.fontSize,
      this.color = SCColors.accent,
      this.fontWeight = FontWeight.w400,
      this.textAlign = TextAlign.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
