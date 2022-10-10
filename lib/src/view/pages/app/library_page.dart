import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/pages/app/home/info_page.dart';
import 'package:library_book_app/src/view/shared/components/utils_components.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InfoPage(),
      decoration: UtilsComponents.getBoxDecoration(),

    );
  }
}
