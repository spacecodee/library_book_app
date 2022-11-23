import 'package:flutter/material.dart';
import 'package:library_book_app/src/core/dto/category/book/category_book_and_book_dto.dart';
import 'package:library_book_app/src/service/category/book/category_book_service.dart';
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
    final categoryBookService = CategoryBookService();

    return FutureBuilder(
      future: categoryBookService.list(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
              color: SCColors.primary,
            ),
          );
        } else {
          final data = snapshot.data as List<CategoryBookAndBookDto>;

          return Padding(
            padding: EdgeInsets.only(
              top: responsive.widthPercentage(4.5),
              bottom: responsive.widthPercentage(3),
              left: responsive.widthPercentage(4),
              right: responsive.widthPercentage(4),
            ),
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
                SizedBox(
                  width: responsive.width,
                  height: responsive.heightPercentage(72),
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SCTextStyle(
                            text: data[index].name!.toUpperCase(),
                            fontWeight: FontWeight.w600,
                            color: SCColors.accent,
                            fontSize: responsive.widthPercentage(3.5),
                          ),
                          SizedBox(
                            height: responsive.widthPercentage(4.5),
                          ),
                          SizedBox(
                            height: responsive.heightPercentage(32),
                            child: ScCardCarousel(
                              width: responsive.widthPercentage(28),
                              height: responsive.widthPercentage(43),
                              books: data[index].bookDto!,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
