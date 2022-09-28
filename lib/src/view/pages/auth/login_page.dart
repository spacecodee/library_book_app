import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/components/utils_components.dart';
import 'package:library_book_app/src/view/shared/widgets/forms/sc_login_form.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //gradient
          decoration: UtilsComponents.getBoxDecoration(),
          width: double.infinity,
          height: myResponsive.height > 600 ? myResponsive.height : null,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.router.pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: myResponsive.widthPercentage(5),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(height: myResponsive.diagonalPercentage(2)),
                  SCTextStyle(
                    text: 'Welcome Back!',
                    fontFamily: 'Lora',
                    fontSize: myResponsive.heightPercentage(5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: myResponsive.diagonalPercentage(.5)),
                  SCTextStyle(
                    text: 'Log in to start reading',
                    fontSize: myResponsive.heightPercentage(3),
                  ),
                  SizedBox(height: myResponsive.diagonalPercentage(3)),
                  Container(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/icon/undraw_books.svg',
                      fit: BoxFit.cover,
                      height: myResponsive.heightPercentage(15),
                    ),
                  ),
                  SizedBox(height: myResponsive.diagonalPercentage(5)),
                  const ScLoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
