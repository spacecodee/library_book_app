import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ScLabelText extends StatelessWidget {
  final SCTextStyle firstText;
  final SCTextStyle secondText;
  final double separation;
  final bool isFlexible;
  final bool isRow;

  const ScLabelText({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.separation,
    this.isFlexible = false,
    this.isRow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (isRow)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              firstText,
              SizedBox(width: separation),
              (isFlexible == true) ? Flexible(child: secondText) : secondText,
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              firstText,
              SizedBox(height: separation),
              (isFlexible == true) ? Flexible(child: secondText) : secondText,
            ],
          );
  }
}
