import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_input_text.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class ScRegisterForm extends StatelessWidget {
  const ScRegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SCTextStyle(
            text: 'Full Name',
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
            hintText: 'Enter your first name and last name',
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1)),
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
          SizedBox(height: myResponsive.diagonalPercentage(1)),
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
          SizedBox(height: myResponsive.heightPercentage(1)),
          SCTextStyle(
            text: 'Phone Number',
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
            hintText: '+51 | 999 999 999',
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: myResponsive.diagonalPercentage(5)),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              SCTextStyle(
                text: 'I agree to the Terms and Conditions',
                fontSize: myResponsive.widthPercentage(4),
                fontFamily: 'Lora',
              ),
            ],
          ),
          CsButtonIp(
            onTap: () {},
            text: 'Start Reading',
            fontFamily: 'Lora',
            fontSize: myResponsive.widthPercentage(4.2),
          ),
          SizedBox(height: myResponsive.diagonalPercentage(1.5)),
        ],
      ),
    );
  }
}
