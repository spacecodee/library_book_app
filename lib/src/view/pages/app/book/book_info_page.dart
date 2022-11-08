import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/core/raw/raw_dto.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/blur/blur_art_image.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/carousel/cs_card_carousel.dart';
import 'package:library_book_app/src/view/shared/widgets/containers/description_info_container.dart';
import 'package:library_book_app/src/view/shared/widgets/containers/sc_rating_section.dart';
import 'package:library_book_app/src/view/shared/widgets/containers/sc_starts_section.dart';
import 'package:library_book_app/src/view/shared/widgets/image/image_artwork.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_label_text.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class BookInfoPage extends StatelessWidget {
  final int bookId;

  const BookInfoPage({Key? key, @PathParam('id') this.bookId = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = SCResponsive.of(context);
    final spaceImageAndText = SCResponsive.of(context).widthPercentage(38);

    print("book id: $bookId");

    return SingleChildScrollView(
      child: Container(
        color: SCColors.freeColor,
        width: responsive.width,
        height: responsive.heightPercentage(145),
        child: Stack(
          children: [
            BlurArtImage(
              width: responsive.width,
              height: responsive.heightPercentage(25),
              colorFilter: SCColors.accentMaterial.withOpacity(0),
              onTap: () {
                context.router.pushNamed('/dashboard-page');
              },
            ),
            Positioned(
              width: responsive.width,
              height: responsive.heightPercentage(5),
              top: responsive.heightPercentage(25),
              child: Container(
                color: SCColors.freeColor,
              ),
            ),
            Positioned(
              top: responsive.heightPercentage(10),
              left: responsive.widthPercentage(5),
              child: SCTextStyle(
                text: 'It',
                fontWeight: FontWeight.bold,
                color: SCColors.accent,
                fontSize: responsive.widthPercentage(4),
              ),
            ),
            Positioned(
              top: responsive.heightPercentage(14),
              left: responsive.widthPercentage(5),
              child: SCTextStyle(
                text: 'Stephen King',
                fontWeight: FontWeight.bold,
                color: SCColors.accent,
                fontSize: responsive.widthPercentage(4),
              ),
            ),
            Positioned(
              top: responsive.heightPercentage(18),
              left: responsive.widthPercentage(5),
              child: ImageArtWork(
                width: responsive.widthPercentage(30),
                height: responsive.heightPercentage(26),
                urlImage:
                    'https://images.cdn2.buscalibre.com/fit-in/360x360/3c/a0/3ca0d5641108924db725e1d9b5971d52.jpg',
              ),
            ),
            Positioned(
              top: responsive.heightPercentage(26),
              left: spaceImageAndText,
              child: ScStartsSection(
                itemSize: responsive.widthPercentage(6),
                initialRating: 3,
                unratedColor: SCColors.accent.withOpacity(0.2),
              ),
            ),
            Positioned(
              top: responsive.heightPercentage(30),
              left: spaceImageAndText,
              child: ScLabelText(
                firstText: SCTextStyle(
                  text: 'Pages:',
                  fontWeight: FontWeight.w500,
                  color: SCColors.accent,
                  fontSize: responsive.widthPercentage(3),
                ),
                secondText: SCTextStyle(
                  text: '1504',
                  fontFamily: 'Lora',
                  color: SCColors.accent,
                  fontSize: responsive.widthPercentage(3),
                ),
                separation: responsive.widthPercentage(1),
              ),
            ),
            Positioned(
              top: responsive.heightPercentage(32.5),
              left: spaceImageAndText,
              width: responsive.widthPercentage(58),
              child: ScLabelText(
                separation: responsive.widthPercentage(1),
                isFlexible: true,
                firstText: SCTextStyle(
                  text: 'Short \nDescription:',
                  fontWeight: FontWeight.w500,
                  color: SCColors.accent,
                  fontSize: responsive.widthPercentage(3),
                ),
                secondText: SCTextStyle(
                  //lorem ipsum dolor sit amet
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a turpis mi. Curabitur faucibus',
                  fontFamily: 'Lora',
                  color: SCColors.accent,
                  fontSize: responsive.widthPercentage(3),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: responsive.widthPercentage(5),
              ),
              margin: EdgeInsets.only(
                top: responsive.heightPercentage(46),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScButtonIp(
                    //width: responsive.widthPercentage(90),
                    padding: EdgeInsets.symmetric(
                      horizontal: responsive.diagonalPercentage(3),
                      vertical: responsive.diagonalPercentage(1.4),
                    ),
                    text: "Read this book",
                    fontFamily: "Lora",
                    fontSize: responsive.widthPercentage(4),
                    onTap: () => print("Read this book"),
                  ),
                  SizedBox(
                    height: responsive.heightPercentage(2),
                  ),
                  Expanded(
                    child: DescriptionInfoContainer(
                      isFlexible: true,
                      borderCategoryColor: SCColors.primary,
                      separation: responsive.widthPercentage(2),
                      firstText: SCTextStyle(
                        text: 'Category Book'.toUpperCase(),
                        fontWeight: FontWeight.w600,
                        color: SCColors.accent,
                        fontSize: responsive.widthPercentage(3.5),
                      ),
                      categoryText: SCTextStyle(
                        text: 'Horror',
                        fontWeight: FontWeight.w500,
                        color: SCColors.accent,
                        fontSize: responsive.widthPercentage(3.5),
                      ),
                      secondText: SCTextStyle(
                        textAlign: TextAlign.justify,
                        //lorem ipsum dolor sit amet
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In id suscipit massa. Suspendisse suscipit nibh orci. Nulla pellentesque neque vitae auctor tempor. Nullam eget nibh odio. Nunc eleifend quis nibh sit amet malesuada. Sed posuere ultrices euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam cursus lectus non nulla eleifend, nec consequat elit euismod. Mauris ut aliquam libero. Nam vitae sagittis sem. Pellentesque eu risus semper, tempor turpis ut, interdum tellus. Fusce at lacus ornare, vehicula quam nec, imperdiet tortor.',
                        color: SCColors.accent,
                        fontSize: responsive.widthPercentage(3.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: responsive.heightPercentage(2),
                  ),
                  SCTextStyle(
                    text: 'Related Books'.toUpperCase(),
                    fontWeight: FontWeight.w600,
                    color: SCColors.accent,
                    fontSize: responsive.widthPercentage(3.5),
                  ),
                  SizedBox(
                    height: responsive.heightPercentage(2),
                  ),
                  SizedBox(
                    height: responsive.heightPercentage(34),
                    child: ScCardCarousel(
                      width: responsive.widthPercentage(28),
                      height: responsive.widthPercentage(43),
                      books: RawDto.books(),
                    ),
                  ),
                  SCTextStyle(
                    text: 'Would you like to rate this book?'.toUpperCase(),
                    fontWeight: FontWeight.w600,
                    color: SCColors.accent,
                    fontSize: responsive.widthPercentage(3.5),
                  ),
                  SizedBox(
                    height: responsive.heightPercentage(1),
                  ),
                  ScRatingSection(
                    itemSize: responsive.widthPercentage(6),
                    initialRating: 3,
                    unratedColor: SCColors.accent.withOpacity(0.2),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    height: responsive.heightPercentage(2),
                  ),
                  ScButtonIp(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsive.diagonalPercentage(3),
                      vertical: responsive.diagonalPercentage(1.4),
                    ),
                    haveBorder: true,
                    borderColor: SCColors.primary,
                    fontFamily: 'Lora',
                    text: "Leave a rating",
                    fontSize: responsive.widthPercentage(4),
                    onTap: () {
                      print("Leave a rating");
                    },
                  ),
                  SizedBox(
                    height: responsive.heightPercentage(4),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
