import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/pages/app/view_pdf.dart';
import 'package:library_book_app/src/view/shared/components/utils_components.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UtilsComponents.getBoxDecoration(),
      child: ViewPdf(
        title: "Books",
      ),
    );
  }
}
