import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/core/dto/book/show_book_dto.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/service/book/book_service.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/blur/blur_art_image.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/containers/description_info_container.dart';
import 'package:library_book_app/src/view/shared/widgets/containers/sc_rating_section.dart';
import 'package:library_book_app/src/view/shared/widgets/containers/sc_starts_section.dart';
import 'package:library_book_app/src/view/shared/widgets/image/image_artwork.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_label_text.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class BookInfoPage extends StatefulWidget {
  final int bookId;

  const BookInfoPage({
    Key? key,
    @PathParam('bookId') this.bookId = 0,
  }) : super(key: key);

  @override
  State<BookInfoPage> createState() => _BookInfoPageState();
}

class _BookInfoPageState extends State<BookInfoPage> {
  @override
  Widget build(BuildContext context) {
    final bookService = BookService();
    final responsive = SCResponsive.of(context);
    final spaceImageAndText = SCResponsive.of(context).widthPercentage(38);

    return SafeArea(
      child: Scaffold(
        backgroundColor: SCColors.freeColor,
        body: SingleChildScrollView(
          child: FutureBuilder<ShowBookDto>(
            future: bookService.findByBookIdAndClientUsername(widget.bookId),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  color: SCColors.freeColor,
                  width: responsive.width,
                  height: responsive.height,
                  child: Stack(
                    children: [
                      BlurArtImage(
                        imageUrl: snapshot.data!.image,
                        width: responsive.width,
                        height: responsive.heightPercentage(25),
                        colorFilter: SCColors.secondary.withOpacity(0.5),
                        onTap: () {
                          context.popRoute();
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
                          text: snapshot.data!.name,
                          fontWeight: FontWeight.bold,
                          color: SCColors.accent,
                          fontSize: responsive.widthPercentage(4),
                        ),
                      ),
                      Positioned(
                        top: responsive.heightPercentage(14),
                        left: responsive.widthPercentage(5),
                        child: SCTextStyle(
                          text: snapshot.data!.author,
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
                          urlImage: snapshot.data!.image,
                        ),
                      ),
                      Positioned(
                        top: responsive.heightPercentage(26),
                        left: spaceImageAndText,
                        child: ScStartsSection(
                          itemSize: responsive.widthPercentage(6),
                          initialRating: snapshot.data!.globalRating,
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
                            text: snapshot.data!.pages.toString(),
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
                            //short text
                            text: '${snapshot.data!.description.substring(0, 48)}...',
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
                              onTap: () {
                                context.pushRoute(
                                  EmptyRouterRoute(children: [
                                    ViewPdfRoute(
                                      pdf: snapshot.data!.pdf,
                                    ),
                                  ]),
                                );
                              },
                            ),
                            SizedBox(
                              height: responsive.heightPercentage(2),
                            ),
                            DescriptionInfoContainer(
                              isFlexible: false,
                              borderCategoryColor: SCColors.primary,
                              separation: responsive.widthPercentage(2),
                              firstText: SCTextStyle(
                                text: 'Category Book'.toUpperCase(),
                                fontWeight: FontWeight.w600,
                                color: SCColors.accent,
                                fontSize: responsive.widthPercentage(3.5),
                              ),
                              categoryText: SCTextStyle(
                                text: snapshot.data!.categoryName,
                                fontWeight: FontWeight.w500,
                                color: SCColors.accent,
                                fontSize: responsive.widthPercentage(3.5),
                              ),
                              secondText: SCTextStyle(
                                textAlign: TextAlign.justify,
                                text: snapshot.data!.description,
                                color: SCColors.accent,
                                fontSize: responsive.widthPercentage(3.5),
                              ),
                            ),
                            SizedBox(
                              height: responsive.heightPercentage(2),
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
                              initialRating: snapshot.data!.rating,
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
                );
              } else {
                return Container(
                  color: SCColors.freeColor,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
