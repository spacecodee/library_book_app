import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/core/dto/book/book_dto.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/containers/image_card_section.dart';
import 'package:library_book_app/src/view/shared/widgets/image/image_artwork.dart';

class ScCardCarousel extends StatelessWidget {
  final List<BookDto> books;
  final double width;
  final double height;

  const ScCardCarousel({
    Key? key,
    required this.books,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = SCResponsive.of(context);

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            final int idToSend = books[index].id ?? 0;
            context.router.push(
              DashboardRoute(
                children: [
                  BookInfoRoute(bookId: idToSend),
                ],
              ),
            );
          },
          child: ImageCarSection(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : responsive.widthPercentage(5),
            ),
            space: responsive.heightPercentage(1.5),
            fontSize: responsive.widthPercentage(3),
            title: books.elementAt(index).name,
            subtitle: books.elementAt(index).author,
            ratingBook: 4,
            imageArtWork: ImageArtWork(
              width: width,
              height: height,
              urlImage: books.elementAt(index).image,
            ),
          ),
        );
      },
    );
  }
}
