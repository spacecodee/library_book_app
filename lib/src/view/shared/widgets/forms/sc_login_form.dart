import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';

import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_flat.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_input_text.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ScLoginForm extends StatelessWidget {
  const ScLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SCTextStyle(
            text: 'Username',
            fontSize: myResponsive.widthPercentage(4),
            fontFamily: 'Lora',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCInputText(
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
              vertical: 0,
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your username',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(3)),
          SCTextStyle(
            text: 'Password',
            fontSize: myResponsive.widthPercentage(4),
            fontFamily: 'Lora',
          ),
          SizedBox(height: myResponsive.heightPercentage(1)),
          SCInputText(
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your password',
            isPassword: true,
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1.5)),
          Container(
            alignment: Alignment.centerRight,
            child: SCTextStyle(
              text: 'Forgot your password?',
              fontSize: myResponsive.widthPercentage(3),
              textAlign: TextAlign.end,
            ),
          ),
          SizedBox(height: myResponsive.diagonalPercentage(5)),
          //button center with primary color
          CsButtonIp(
            onTap: () {
              context.router.pushNamed('/dashboard-page');
            },
            text: 'Log In',
            fontFamily: 'Lora',
            fontSize: myResponsive.widthPercentage(4.2),
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1.5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SCTextStyle(
                text: 'Don\'t have an account?',
                fontSize: myResponsive.widthPercentage(3),
              ),
              SizedBox(width: myResponsive.diagonalPercentage(.5)),
              ScButtonFlat(
                onTap: () => context.router.pushNamed('/register'),
                text: 'Register here',
                fontSize: myResponsive.widthPercentage(3),
                fontWeight: FontWeight.w600,
              )
            ],
          )
        ],
      ),
    );
  }
}
