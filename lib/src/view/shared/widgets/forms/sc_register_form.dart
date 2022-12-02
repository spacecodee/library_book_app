import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_book_app/src/core/dto/people/people_dto.dart';
import 'package:library_book_app/src/core/vo/user/client/user_client_vo.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/service/auth/auth_service.dart';
import 'package:library_book_app/src/shared/progress_dialog.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_input_text.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ScRegisterForm extends ConsumerWidget {
  const ScRegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String email;
    final _fromKey= GlobalKey<FormState>();
    final myResponsive = SCResponsive.of(context);
    final authService = AuthService();
    final nameController = TextEditingController();
    final lastnameController = TextEditingController();
    final emailController = TextEditingController();
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Form(
      key: _fromKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SCTextStyle(
            text: 'Name',
            fontSize: myResponsive.widthPercentage(4),
            fontFamily: 'Lora',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(0.5)),
          SCInputText(
            controller: nameController,
            validator: (value) {
              if (value!.isEmpty)  {
                return 'first name requerid' ;
              }

            },

            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
              vertical: 0,
            ),
            fontSize: myResponsive.widthPercentage(4),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your first name',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCTextStyle(
            text: 'Last Name',
            fontSize: myResponsive.widthPercentage(4),
            fontFamily: 'Lora',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCInputText(
            controller: lastnameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'last is required';
              }
            },
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
              vertical: 0,
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your last name',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCTextStyle(
            text: 'Email',
            fontSize: myResponsive.widthPercentage(4),
            fontFamily: 'Lora',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCInputText(
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'email is required';
              }
              if(!RegExp("^[a-zA-Z0-0+_.-]+@[a-zA-Z0-9.-]+[a-z]").hasMatch(value))
              {
                return "Please enter valid email";
              }
              return null;
            },
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
              vertical: 0,
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCTextStyle(
            text: 'Username',
            fontSize: myResponsive.widthPercentage(4),
            fontFamily: 'Lora',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCInputText(
            controller: usernameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'username is required';
              }
            },
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
              vertical: 0,
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your username',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCTextStyle(
            text: 'Password',
            fontSize: myResponsive.widthPercentage(4),
            fontFamily: 'Lora',
          ),
          SizedBox(height: myResponsive.heightPercentage(1)),
          SCInputText(
            controller: passwordController,
            validator: (value) {
              if (value!.isNotEmpty && value.length>3) {
                return null;
              }else if(value.length<4 && value.isNotEmpty){
                return 'No way your passwors is taht short';
              }else{
                return 'password requerid';
              }
            },
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
              vertical: 0,
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your password',
            keyboardType: TextInputType.emailAddress,
            isPassword: true,
          ),
          SizedBox(height: myResponsive.diagonalPercentage(3)),
          ScButtonIp(
            onTap: () {
              if (_fromKey.currentState!.validate()) {
                ProgressDialog.show(context);
                final peopleDto = PeopleDto(
                  name: nameController.text.trim(),
                  surname: lastnameController.text.trim(),
                );
                final clientVo = UserClientVo(
                  email: emailController.text.trim(),
                  password: passwordController.text.toString(),
                  peopleDto: peopleDto,
                  username: usernameController.text.trim(),
                );


                authService.register(clientVo).then((value) {
                  if (value) {
                    ProgressDialog.dismiss(context);
                    context.router.pushAndPopUntil(
                      const LoginRoute(),
                      predicate: (route) => false,
                    );
                  } else {
                    ProgressDialog.dismiss(context);
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      autoHide: const Duration(seconds: 2),
                      customHeader: const Icon(
                        Icons.error_outline,
                        color: SCColors.accent,
                      ),
                      dialogBackgroundColor: SCColors.error,
                      animType: AnimType.rightSlide,
                      title: 'Register Error',
                      desc: 'An error has occurred, please try again',
                    ).show();
                  }
                });
              }
            },
            text: 'Start Reading',
            fontFamily: 'Lora',
            fontSize: myResponsive.widthPercentage(4.2),
          ),
        ],
      ),
    );
  }
}