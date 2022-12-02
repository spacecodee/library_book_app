import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/core/dto/user/user_global_account.dart';
import 'package:library_book_app/src/routes/app_router.gr.dart';
import 'package:library_book_app/src/service/token/authentication_service.dart';
import 'package:library_book_app/src/service/user/global_user_service.dart';
import 'package:library_book_app/src/shared/progress_dialog.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/buttons/sc_button_ip.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_text_style.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);
  @override
  State<UserPage> createState() => _UserPageState();
}
class _UserPageState extends State<UserPage> {
  final _globalUserService = GlobalUserService();

  @override
  Widget build(BuildContext context) {
    final responsive = SCResponsive.of(context);
    final tokenService = AuthenticationClient();

    return SafeArea(
      child: Scaffold(
        backgroundColor: SCColors.freeColor,
        body: FutureBuilder<UserGlobalAccount>(
          future: _globalUserService.getAccount(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:50, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //round image
                      SCTextStyle(
                        text: '            Profile',
                        fontSize: responsive.widthPercentage(7.5),
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height:10,
                      ),
                      Center(

                        child: Container(
                          width: responsive.diagonalPercentage(14),
                          height: responsive.diagonalPercentage(14),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage('https://picsum.photos/150'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: responsive.diagonalPercentage(4)),
                      SCTextStyle(
                        text: 'Email',
                        fontSize: responsive.widthPercentage(4),
                        fontFamily: 'Lora',

                      ),
                      SizedBox(height: responsive.diagonalPercentage(1)),

                      SCTextStyle(
                        text: snapshot.data!.email,
                        fontSize: responsive.widthPercentage(4),
                        hasBorder: true,
                      ),

                      SizedBox(height: responsive.diagonalPercentage(2)),
                      SCTextStyle(

                        text: 'Name',
                        fontSize: responsive.widthPercentage(4),
                        fontFamily: 'Lora',
                      ),
                      SizedBox(height: responsive.diagonalPercentage(1)),
                      SCTextStyle(
                        text: snapshot.data!.name,
                        fontSize: responsive.widthPercentage(4),
                        hasBorder: true,
                      ),

                      SizedBox(height: responsive.diagonalPercentage(2)),
                      SCTextStyle(
                        text: 'Surname',
                        fontSize: responsive.widthPercentage(4),
                        fontFamily: 'Lora',
                      ),
                      SizedBox(height: responsive.diagonalPercentage(1)),
                      SCTextStyle(
                        text: snapshot.data!.surname,
                        fontSize: responsive.widthPercentage(4),
                        hasBorder: true,
                      ),

                      SizedBox(height: responsive.diagonalPercentage(2)),
                      SCTextStyle(
                        text: 'Address',
                        fontSize: responsive.widthPercentage(4),
                        fontFamily: 'Lora',
                      ),
                      SizedBox(height: responsive.diagonalPercentage(1)),
                      SCTextStyle(
                        text: snapshot.data!.address,
                        fontSize: responsive.widthPercentage(4),
                        hasBorder: true,
                      ),

                      SizedBox(height: responsive.diagonalPercentage(4)),
                      ScButtonIp(
                        text: 'Close Session',
                        fontSize: responsive.widthPercentage(4),
                        onTap: () {
                          ProgressDialog.show(context);
                          tokenService.logOut().then((value) {
                            ProgressDialog.dismiss(context);
                            context.router.pushAndPopUntil(
                              const InitApp(),
                              predicate: (route) => false,
                            );
                          });
                        },
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Container(
                color: SCColors.freeColor,
                width: responsive.width,
                height: responsive.height,
                child: const Center(
                  child: CircularProgressIndicator(
                    color: SCColors.accent,
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
