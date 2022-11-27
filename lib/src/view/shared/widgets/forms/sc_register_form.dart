import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:library_book_app/src/core/dto/people/people_dto.dart';
import 'package:library_book_app/src/core/vo/user/client/user_client_vo.dart';
import 'package:library_book_app/src/providers/checkbox_provider.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/checkbox/sc_checkbox.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_input_text.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ScRegisterForm extends ConsumerWidget {
  const ScRegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myResponsive = SCResponsive.of(context);
    final nameController = TextEditingController();
    final lastnameController = TextEditingController();
    final emailController = TextEditingController();
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SCTextStyle(
            text: 'Name',
            fontSize: myResponsive.widthPercentage(4),
            fontFamily: 'Lora',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
          SCInputText(
            controller: nameController,
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
              vertical: 0,
            ),
            fontSize: myResponsive.widthPercentage(5),
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
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
              vertical: 0,
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your username',
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
            padding: EdgeInsets.symmetric(
              horizontal: myResponsive.diagonalPercentage(2),
            ),
            fontSize: myResponsive.widthPercentage(5),
            hintTextSize: myResponsive.widthPercentage(4),
            hintText: 'Enter your password',
            isPassword: true,
          ),
          SizedBox(height: myResponsive.diagonalPercentage(3)),
          Row(
            children: [
              ScCheckbox(
                onTap: () {
                  ref.read(checkboxProvider.notifier).changedCheckbox();
                },
                value: ref.watch(checkboxProvider),
                size: myResponsive.widthPercentage(6.5),
                borderSize: myResponsive.widthPercentage(0.5),
                iconSize: myResponsive.widthPercentage(4.8),
              ),
              SizedBox(width: myResponsive.diagonalPercentage(1)),
              SCTextStyle(
                text: 'I agree to the Terms and Conditions',
                fontSize: myResponsive.widthPercentage(4),
                fontFamily: 'Lora',
              ),
            ],
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1.5)),
          ScButtonIp(
            onTap: () {
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

              //print(clientVo.toJson());
              print('save');
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
