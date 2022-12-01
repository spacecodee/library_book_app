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
  final bool hasBorder;

  const SCTextStyle({
    Key? key,
    required this.text,
    this.fontFamily = 'Graphik',
    required this.fontSize,
    this.color = SCColors.accent,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.start,
    this.isTextLarge = false,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //border radius
      decoration: (hasBorder) ? BoxDecoration(
        border: Border.all(color: SCColors.accent.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(5),
      ) : null,
      child: Padding(
        padding: (hasBorder) ? const EdgeInsets.all(8.0) : const EdgeInsets.all(0),
        child: Text(
          (isTextLarge) ? ((text.length > 18) ? '${text.substring(0, 18)}...' : text) : text,
          textAlign: textAlign,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: color,
          ),
        ),
      ),
    );
  }
}
