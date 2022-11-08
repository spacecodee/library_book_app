import 'package:flutter/material.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';
import 'package:library_book_app/src/shared/sc_responsive.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_input_search.dart';
import 'package:library_book_app/src/view/shared/widgets/texts/sc_search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myResponsive = SCResponsive.of(context);

    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //padding
      padding: EdgeInsets.only(
        top: myResponsive.widthPercentage(4.5),
        bottom: myResponsive.widthPercentage(3),
        left: myResponsive.widthPercentage(4),
        right: myResponsive.widthPercentage(4),
      ),
      width: myResponsive.width,
      height: myResponsive.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScSearchInput(
            width: myResponsive.widthPercentage(80),
            height: myResponsive.heightPercentage(5.4),
            hintText: "Search your favorite book",
            fontSize: myResponsive.widthPercentage(3),
            hintTextSize: myResponsive.widthPercentage(4),
          ),
        ],
      ),
    );
  }
}
