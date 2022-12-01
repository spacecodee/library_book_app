import 'package:flutter/material.dart';
import 'package:library_book_app/src/core/dto/category/book/category_book_and_book_dto.dart';
import 'package:library_book_app/src/service/category/book/category_book_service.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/carousel/cs_card_carousel.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final responsive = SCResponsive.of(context);
    final categoryBookService = CategoryBookService();

    return FutureBuilder<List<CategoryBookAndBookDto>>(
      future: categoryBookService.list(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container(
            color: SCColors.secondary,
            child: const Center(
              child: CircularProgressIndicator(
                color: SCColors.primary,
              ),
            ),
          );
        } else {
          final data = snapshot.data as List<CategoryBookAndBookDto>;

          return Padding(
            padding: EdgeInsets.only(
              top: responsive.widthPercentage(1),
              bottom: responsive.widthPercentage(3),
              left: responsive.widthPercentage(4),
              right: responsive.widthPercentage(4),
            ),
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
                      height: responsive.heightPercentage(38),
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
          );
        }
      },
    );
  }
}
