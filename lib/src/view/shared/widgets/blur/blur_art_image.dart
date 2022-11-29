import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';

class BlurArtImage extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;
  final double filter;
  final Color colorFilter;
  final BoxFit fit;
  final void Function()? onTap;

  const BlurArtImage({
    Key? key,
    required this.width,
    required this.height,
    this.filter = 10,
    this.colorFilter = Colors.white,
    this.imageUrl = 'https://images.cdn2.buscalibre.com/fit-in/360x360/3c/a0/3ca0d5641108924db725e1d9b5971d52.jpg',
    this.fit = BoxFit.cover,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: fit,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(color: colorFilter),
            ),
          ),
        ),
        Positioned(
          left: myResponsive.widthPercentage(5),
          top: myResponsive.heightPercentage(2),
          child: InkWell(
            onTap: onTap,
            child: Icon(
              Icons.arrow_back_ios,
              color: SCColors.accent,
              size: myResponsive.widthPercentage(6),
            ),
          ),
        ),
        Positioned(
          right: myResponsive.widthPercentage(5),
          top: myResponsive.heightPercentage(3),
          child: Icon(
            Icons.more_horiz,
            color: SCColors.accent,
            size: myResponsive.widthPercentage(6),
          ),
        ),
        Positioned(
          right: myResponsive.widthPercentage(14),
          top: myResponsive.heightPercentage(3),
          child: Icon(
            Icons.share,
            color: SCColors.accent,
            size: myResponsive.widthPercentage(6),
          ),
        ),
      ],
    );
  }
}
