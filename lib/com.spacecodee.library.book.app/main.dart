import 'package:flutter/material.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/shared/sc_colors.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/view/pages/auth/login_page.dart';
import 'package:library_book_app/com.spacecodee.library.book.app/view/pages/home/init_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Graphik',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: SCColors.accentMaterial,
            accentColor: SCColors.accentMaterial,
            backgroundColor: SCColors.backgroundMaterial,
            errorColor: SCColors.errorMaterial,
            primaryColorDark: SCColors.secondaryMaterial,
            cardColor: SCColors.primaryMaterial,
          )),
      //home: const LoginPage(),
      home: const InitApp(),
    );
  }
}
