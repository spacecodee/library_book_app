import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/shared/utils.dart';
import 'package:library_book_app/src/view/shared/widgets/containers/image_card_section.dart';
import 'package:library_book_app/src/view/shared/widgets/image/image_artwork.dart';

class ScCardCarousel extends StatelessWidget {
  const ScCardCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = SCResponsive.of(context);

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: Utils.getBooks().length,
      itemBuilder: (context, index) {
        return ImageCarSection(
          padding: EdgeInsets.only(
            left: index == 0 ? 0 : responsive.widthPercentage(5),
          ),
          space: responsive.heightPercentage(1.5),
          fontSize: responsive.widthPercentage(3),
          title: Utils.getBooks().elementAt(index).values.elementAt(0).toString(),
          subtitle: Utils.getBooks().elementAt(index).values.elementAt(1).toString(),
          ratingBook: 4,
          imageArtWork: ImageArtWork(
            width: responsive.widthPercentage(28),
            height: responsive.heightPercentage(22),
            urlImage: Utils.getBooks().elementAt(index).values.elementAt(2).toString(),
          ),
        );
      },
    );
  }
}
