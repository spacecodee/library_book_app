import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/core/dto/jwt/jwt_dto.dart';
import 'package:library_book_app/src/core/pojo/auth_user_pojo.dart';
import 'package:library_book_app/src/service/token/authentication_service.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/service/auth/auth_service.dart';
import 'package:library_book_app/src/shared/progress_dialog.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_flat.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_input_text.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ScLoginForm extends StatefulWidget {
  const ScLoginForm({Key? key}) : super(key: key);

  @override
  State<ScLoginForm> createState() => _ScLoginFormState();
}

class _ScLoginFormState extends State<ScLoginForm> {
  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<FormState>();
    final myResponsive = SCResponsive.of(context);
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final authService = AuthService();

    return Form(
      key: globalKey,
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
            controller: usernameController,
            validator: (value) {
              if (value!.trim().isEmpty) {
                return 'Username is required';
              }
            },
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
            controller: passwordController,
            validator: (value) {
              if (value!.trim().isEmpty) {
                return 'Password is required';
              }
            },
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your password',
            isPassword: true,
          ),
          SizedBox(height: myResponsive.diagonalPercentage(5)),
          //button center with primary color
          ScButtonIp(
            onTap: () {
              if (globalKey.currentState!.validate()) {
                ProgressDialog.show(context);
                final authUserPojo = AuthUserPojo(
                  password: passwordController.text.trim(),
                  username: usernameController.text.trim(),
                );

                authService.login(authUserPojo).then((value) {
                  if (value.token.isNotEmpty) {
                    ProgressDialog.dismiss(context);
                    _saveSession(value);
                    context.router.pushAndPopUntil(
                      const EmptyRouterRoute(children: [
                        DashboardRoute(),
                      ]),
                      predicate: (route) => false,
                    );
                  }
                });
              }
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

  Future<void> _saveSession(JwtDto dto) async {
    final authenticationClient = AuthenticationClient();
    authenticationClient.saveSession(dto);
  }
}
