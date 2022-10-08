import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_book_app/src/view/shared/components/utils_components.dart';
import 'package:library_book_app/src/shared/sc_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     /// decoration: UtilsComponents.getBoxDecoration(),
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left : 8.0,
        right: 8.0,
      ),
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12.0),
      ),

  child: TextField(
    cursorColor: Colors.grey,
      decoration: InputDecoration(
        prefixIcon: Icon(
            CupertinoIcons.search_circle,
          size:40.0,
        color: Colors.grey,
        ),
    suffixIcon: Icon(
      Icons.tune,
     color: Colors.grey,
      size: 28.0,
    ),
  border: InputBorder.none,
        hintText: 'Buscar'
      ),
    ),
    );
  }
}
