import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

class SCTextStyle extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final bool isTextLarge;

  const SCTextStyle({
    Key? key,
    required this.text,
    this.fontFamily = 'Graphik',
    required this.fontSize,
    this.color = SCColors.accent,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.start,
    this.isTextLarge = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      (isTextLarge) ? ((text.length > 18) ? '${text.substring(0, 18)}...' : text) : text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        color: color,
      ),
      softWrap: true,
      maxLines: 2,
    );
  }
}
