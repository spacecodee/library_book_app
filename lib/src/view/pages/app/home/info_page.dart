import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/shared/components/carte_principal.dart';


class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
        CartePrincipal()
        ],
      ),
    );
  }
}
