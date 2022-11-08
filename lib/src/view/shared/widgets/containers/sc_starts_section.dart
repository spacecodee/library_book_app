import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

class ScStartsSection extends StatelessWidget {
  final double itemSize;
  final Color unratedColor;
  final double initialRating;
  final int itemCount;

  const ScStartsSection({
    Key? key,
    required this.unratedColor,
    this.itemSize = 10,
    this.initialRating = 4,
    this.itemCount = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemSize: itemSize,
      unratedColor: unratedColor,
      rating: initialRating,
      direction: Axis.horizontal,
      itemCount: itemCount,
      itemBuilder: (context, _) => const Icon(
        Icons.star_outlined,
        color: SCColors.primary,
      ),
    );
  }
}
