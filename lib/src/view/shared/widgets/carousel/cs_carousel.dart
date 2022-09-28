import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/shared/utils.dart';

class ScCarousel extends StatelessWidget {
  const ScCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return CarouselSlider(
      options: CarouselOptions(
        height: myResponsive.heightPercentage(35),
        viewportFraction: 16 / 9,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
      ),
      items: Utils.getImages().map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(
                  horizontal: myResponsive.diagonalPercentage(6)),
              child: SvgPicture.asset(
                image,
                fit: BoxFit.contain,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
