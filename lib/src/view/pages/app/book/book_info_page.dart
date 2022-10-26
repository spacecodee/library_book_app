import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/blur/blur_art_image.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class BookInfoPage extends StatelessWidget {
  const BookInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);
    final spaceImageAndText = SCResponsive.of(context).widthPercentage(38);

    return SingleChildScrollView(
      child: Container(
        color: SCColors.freeColor,
        width: myResponsive.width,
        height: myResponsive.height,
        child: Stack(
          children: [
            BlurArtImage(
              width: myResponsive.width,
              height: myResponsive.heightPercentage(25),
              colorFilter: SCColors.accentMaterial.withOpacity(0),
            ),
            Positioned(
              width: myResponsive.width,
              height: myResponsive.heightPercentage(5),
              top: myResponsive.heightPercentage(25),
              child: Container(
                color: SCColors.freeColor,
              ),
            ),
            Positioned(
              top: myResponsive.heightPercentage(10),
              left: myResponsive.widthPercentage(5),
              child: SCTextStyle(
                text: 'It',
                fontWeight: FontWeight.bold,
                color: SCColors.accent,
                fontSize: myResponsive.widthPercentage(4),
              ),
            ),
            Positioned(
              top: myResponsive.heightPercentage(14),
              left: myResponsive.widthPercentage(5),
              child: SCTextStyle(
                text: 'Stephen King',
                fontWeight: FontWeight.bold,
                color: SCColors.accent,
                fontSize: myResponsive.widthPercentage(4),
              ),
            ),
            Positioned(
              top: myResponsive.heightPercentage(18),
              left: myResponsive.widthPercentage(5),
              child: Container(
                width: myResponsive.widthPercentage(30),
                height: myResponsive.heightPercentage(26),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.cdn2.buscalibre.com/fit-in/360x360/3c/a0/3ca0d5641108924db725e1d9b5971d52.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Positioned(
              top: myResponsive.heightPercentage(28),
              left: spaceImageAndText,
              child: Row(
                children: [
                  const Icon(Icons.star, color: SCColors.primary),
                  SizedBox(width: myResponsive.widthPercentage(1)),
                  const Icon(Icons.star, color: SCColors.primary),
                  SizedBox(width: myResponsive.widthPercentage(1)),
                  const Icon(Icons.star, color: SCColors.primary),
                  SizedBox(width: myResponsive.widthPercentage(1)),
                  const Icon(Icons.star, color: SCColors.primary),
                  SizedBox(width: myResponsive.widthPercentage(1)),
                  const Icon(Icons.star_half, color: SCColors.primary),
                ],
              ),
            ),
            Positioned(
              top: myResponsive.heightPercentage(32),
              left: spaceImageAndText,
              child: Row(
                children: [
                  SCTextStyle(
                    text: 'Pages:',
                    fontWeight: FontWeight.w500,
                    color: SCColors.accent,
                    fontSize: myResponsive.widthPercentage(3),
                  ),
                  SizedBox(width: myResponsive.widthPercentage(1)),
                  SCTextStyle(
                    text: '1504',
                    fontFamily: 'Lora',
                    color: SCColors.accent,
                    fontSize: myResponsive.widthPercentage(3),
                  ),
                ],
              ),
            ),
            Positioned(
              top: myResponsive.heightPercentage(35),
              left: spaceImageAndText,
              width: myResponsive.widthPercentage(58),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SCTextStyle(
                    text: 'Description:',
                    fontWeight: FontWeight.w500,
                    color: SCColors.accent,
                    fontSize: myResponsive.widthPercentage(3),
                  ),
                  SizedBox(width: myResponsive.widthPercentage(1)),
                  Flexible(
                    child: SCTextStyle(
                      //lorem ipsum dolor sit amet
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a turpis mi. Curabitur faucibus',
                      fontFamily: 'Lora',
                      color: SCColors.accent,
                      fontSize: myResponsive.widthPercentage(3),
                    ),
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
