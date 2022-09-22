import 'package:flutter/material.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/shared/sc_colors.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/shared/sc_responsive.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/view/shared/widgets/text/sc_input_text.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/view/shared/widgets/text/sc_text_style.dart';

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
      body: Container(
        //gradient
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff000000),
              Color(0xff000000),
              Color(0xFF000000),
              Color(0xFF000000),
              Color(0xCC000000),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: myResponsive.widthPercentage(5),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                SizedBox(height: myResponsive.heightPercentage(2)),
                SCTextStyle(
                  text: 'Welcome Back!',
                  fontFamily: 'Lora',
                  fontSize: myResponsive.heightPercentage(4),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: myResponsive.heightPercentage(1)),
                SCTextStyle(
                  text: 'Log in to start reading',
                  fontSize: myResponsive.heightPercentage(2),
                ),
                SizedBox(height: myResponsive.heightPercentage(8)),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SCTextStyle(
                        text: 'Username',
                        fontSize: myResponsive.heightPercentage(1.8),
                      ),
                      SizedBox(height: myResponsive.heightPercentage(1)),
                      SCInputText(
                        fontSize: myResponsive.heightPercentage(1.8),
                        hintTextSize: myResponsive.heightPercentage(1.5),
                        hintText: 'Enter your username',
                      ),
                      SizedBox(height: myResponsive.heightPercentage(2.5)),
                      SCTextStyle(
                        text: 'Password',
                        fontSize: myResponsive.heightPercentage(1.8),
                      ),
                      SizedBox(height: myResponsive.heightPercentage(1)),
                      SCInputText(
                        fontSize: myResponsive.heightPercentage(1.8),
                        hintTextSize: myResponsive.heightPercentage(1.5),
                        hintText: 'Enter your password',
                        isPassword: true,
                      ),
                      SizedBox(height: myResponsive.heightPercentage(1.5)),
                      Container(
                        alignment: Alignment.centerRight,
                        child: SCTextStyle(
                          text: 'Forgot your password?',
                          fontSize: myResponsive.heightPercentage(1.5),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      SizedBox(height: myResponsive.heightPercentage(8)),
                      //button center with primary color
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: SCColors.primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: SCTextStyle(
                            text: 'Log in',
                            fontFamily: 'Lora',
                            fontSize: myResponsive.heightPercentage(2),
                            color: SCColors.accentMaterial,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: myResponsive.heightPercentage(1.5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SCTextStyle(
                            text: 'Don\'t have an account?',
                            fontSize: myResponsive.heightPercentage(1.5),
                          ),
                          SizedBox(width: myResponsive.heightPercentage(.5)),
                          SCTextStyle(
                            text: 'Register here',
                            fontSize: myResponsive.heightPercentage(1.5),
                            fontWeight: FontWeight.w800,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
