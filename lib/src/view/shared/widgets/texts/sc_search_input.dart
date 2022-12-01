import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_input_search.dart';

class ScSearchInput extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final double width;
  final double height;
  final String hintText;
  final double fontSize;
  final double hintTextSize;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;

  const ScSearchInput({
    Key? key,
    required this.width,
    required this.height,
    required this.hintText,
    required this.fontSize,
    required this.hintTextSize,
    this.padding,
    this.onChanged,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScInputSearch(
          onSaved: onSaved,
          onChanged: onChanged,
          width: width,
          height: height,
          fontSize: fontSize,
          hintText: hintText,
          hintTextColor: SCColors.accentMaterial[600],
          hintTextSize: hintTextSize,
        ),
      ],
    );
  }
}
