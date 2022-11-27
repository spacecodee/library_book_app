import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/view/shared/widgets/image/image_artwork.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ImageCarSection extends StatelessWidget {
  final ImageArtWork imageArtWork;
  final double space;
  final double fontSize;
  final double ratingBook;
  final String subtitle;
  final String title;
  final EdgeInsetsGeometry? padding;

  const ImageCarSection({
    Key? key,
    required this.imageArtWork,
    required this.space,
    required this.fontSize,
    required this.ratingBook,
    required this.subtitle,
    required this.title,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageArtWork,
          SizedBox(
            height: space,
          ),
          SCTextStyle(
            text: subtitle,
            fontSize: fontSize,
          ),
          SizedBox(
            height: space / 2,
          ),
          SCTextStyle(
            text: title,
            fontSize: fontSize,
            color: SCColors.accent.withOpacity(0.5),
            isTextLarge: true,
          ),
          SizedBox(
            height: space / 2,
          ),
          Row(
            children: [
              Icon(
                (ratingBook >= 2.5)
                    ? Icons.star_outlined
                    : (ratingBook == 0.0)
                        ? Icons.star_outline
                        : Icons.star_half_outlined,
                color: SCColors.primary,
              ),
              SizedBox(
                width: space / 2,
              ),
              SCTextStyle(
                text: ratingBook.toString(),
                fontSize: fontSize,
              ),
            ],
          )
        ],
      ),
    );
  }
}
