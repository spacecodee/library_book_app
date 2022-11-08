import 'package:flutter/material.dart';
import 'package:library_book_app/src/core/raw/raw_dto.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/carousel/cs_card_carousel.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_search_input.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = SCResponsive.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          top: responsive.widthPercentage(4.5),
          bottom: responsive.widthPercentage(3),
          left: responsive.widthPercentage(4),
          right: responsive.widthPercentage(4),
        ),
        width: responsive.width,
        height: responsive.heightPercentage(155),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScSearchInput(
              width: responsive.widthPercentage(80),
              height: responsive.heightPercentage(5.4),
              hintText: "Search your favorite book",
              fontSize: responsive.widthPercentage(3),
              hintTextSize: responsive.widthPercentage(4),
            ),
            SizedBox(
              height: responsive.heightPercentage(2),
            ),
            SCTextStyle(
              text: 'Popular Books'.toUpperCase(),
              fontWeight: FontWeight.w600,
              color: SCColors.accent,
              fontSize: responsive.widthPercentage(3.5),
            ),
            SizedBox(
              height: responsive.widthPercentage(4),
            ),
            SizedBox(
              height: responsive.heightPercentage(32),
              child: ScCardCarousel(
                width: responsive.widthPercentage(28),
                height: responsive.widthPercentage(43),
                books: RawDto.books(),
              ),
            ),
            SCTextStyle(
              text: 'Horror Books'.toUpperCase(),
              fontWeight: FontWeight.w600,
              color: SCColors.accent,
              fontSize: responsive.widthPercentage(3.5),
            ),
            SizedBox(
              height: responsive.widthPercentage(4),
            ),
            SizedBox(
              height: responsive.heightPercentage(32),
              child: ScCardCarousel(
                width: responsive.widthPercentage(28),
                height: responsive.widthPercentage(43),
                books: RawDto.books(),
              ),
            ),
            SCTextStyle(
              text: 'Fantasy Books'.toUpperCase(),
              fontWeight: FontWeight.w600,
              color: SCColors.accent,
              fontSize: responsive.widthPercentage(3.5),
            ),
            SizedBox(
              height: responsive.widthPercentage(4),
            ),
            SizedBox(
              height: responsive.heightPercentage(32),
              child: ScCardCarousel(
                width: responsive.widthPercentage(28),
                height: responsive.widthPercentage(43),
                books: RawDto.books(),
              ),
            ),
            SCTextStyle(
              text: 'Action Books'.toUpperCase(),
              fontWeight: FontWeight.w600,
              color: SCColors.accent,
              fontSize: responsive.widthPercentage(3.5),
            ),
            SizedBox(
              height: responsive.widthPercentage(4),
            ),
            SizedBox(
              height: responsive.heightPercentage(32),
              child: ScCardCarousel(
                width: responsive.widthPercentage(28),
                height: responsive.widthPercentage(43),
                books: RawDto.books(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
