import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

class ScRatingSection extends StatelessWidget {
  final double itemSize;
  final Color unratedColor;
  final double initialRating;
  final double minRating;
  final int itemCount;
  final void Function(double) onRatingUpdate;

  const ScRatingSection({
    Key? key,
    required this.unratedColor,
    required this.onRatingUpdate,
    this.itemSize = 10,
    this.initialRating = 4,
    this.minRating = 1,
    this.itemCount = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      glow: false,
      itemSize: itemSize,
      unratedColor: unratedColor,
      initialRating: initialRating,
      minRating: minRating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: itemCount,
      itemBuilder: (context, _) => const Icon(
        Icons.star_outlined,
        color: SCColors.primary,
      ),
      onRatingUpdate: onRatingUpdate,
    );
  }
}
