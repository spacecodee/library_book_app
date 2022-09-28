import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/shared/components/utils_components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UtilsComponents.getBoxDecoration(),
    );
  }
}
