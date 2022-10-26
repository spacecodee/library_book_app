import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/shared/components/homelibrary.dart';


class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: <String,WidgetBuilder>{
          'home'  : (BuildContext context) => homePage(),
          'profile' : (BuildContext context) => homePage(),
        }

    );
  }
}