import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class DescriptionInfoContainer extends StatelessWidget {
  final SCTextStyle firstText;
  final SCTextStyle categoryText;
  final SCTextStyle secondText;
  final Color? borderCategoryColor;
  final double separation;
  final bool isFlexible;
  final EdgeInsetsGeometry? padding;

  const DescriptionInfoContainer({
    Key? key,
    required this.firstText,
    required this.categoryText,
    required this.secondText,
    required this.separation,
    this.borderCategoryColor,
    this.padding,
    this.isFlexible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        firstText,
        SizedBox(height: separation),
        Container(
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: borderCategoryColor ?? Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: categoryText,
        ),
        SizedBox(height: separation),
        (isFlexible == true) ? Flexible(child: secondText) : secondText,
      ],
    );
  }
}
