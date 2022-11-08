import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/components/utils_components.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/carousel/cs_carousel.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class InitApp extends StatelessWidget {
  const InitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return Scaffold(
      body: Container(
        decoration: UtilsComponents.getBoxDecoration(),
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ScCarousel(),
                SizedBox(height: myResponsive.diagonalPercentage(2)),
                SCTextStyle(
                  text: 'Just start reading',
                  fontSize: myResponsive.widthPercentage(10.5),
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: myResponsive.diagonalPercentage(2)),
                SCTextStyle(
                  textAlign: TextAlign.center,
                  text:
                      'Get all your favourite books in one spot, share with your friends and start reading',
                  fontSize: myResponsive.widthPercentage(3.5),
                ),
                SizedBox(height: myResponsive.diagonalPercentage(5)),
                ScButtonIp(
                  onTap: () => context.router.pushNamed('/login'),
                  text: 'Log in',
                  fontFamily: 'Lora',
                  fontSize: myResponsive.diagonalPercentage(2),
                ),
                SizedBox(height: myResponsive.diagonalPercentage(2)),
                ScButtonIp(
                  onTap: () => context.router.pushNamed('/register'),
                  text: 'Register',
                  fontFamily: 'Lora',
                  fontSize: myResponsive.diagonalPercentage(2),
                  haveBorder: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
