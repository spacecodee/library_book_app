import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/components/utils_components.dart';
import 'package:library_book_app/src/view/shared/widgets/forms/sc_register_form.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          //gradient
          decoration: UtilsComponents.getBoxDecoration(),
          width: double.infinity,
          height: myResponsive.height,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      context.router.pop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: myResponsive.widthPercentage(5),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(height: myResponsive.diagonalPercentage(2)),
                  SCTextStyle(
                    text: 'Create Account',
                    fontFamily: 'Lora',
                    fontSize: myResponsive.heightPercentage(5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: myResponsive.diagonalPercentage(.5)),
                  SCTextStyle(
                    text: 'Create a free account and access our vast library of books',
                    fontSize: myResponsive.heightPercentage(2),
                  ),
                  SizedBox(height: myResponsive.diagonalPercentage(5)),
                  const ScRegisterForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
