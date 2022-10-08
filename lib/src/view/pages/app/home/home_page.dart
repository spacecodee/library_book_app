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
        color: Colors.white12,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top:2.0,
              left: 20.0,
              right: 20.0 ,
            ),

  child: TextField(

    cursorColor: SCColors.secondaryMaterial,
      decoration: InputDecoration(
        prefixIcon: Icon(
            CupertinoIcons.search_circle,
          size:40.0,
        color: SCColors.secondaryMaterial,
        ),
    suffixIcon: Icon(
      Icons.tune,
     color: SCColors.secondaryMaterial,
      size: 28.0,
    ),
  border: InputBorder.none,
       hintStyle: TextStyle(
         color: SCColors.secondaryMaterial,
         fontSize: 18.0,
       ),
        hintText: 'Buscar una obra literaria'
      ),
    ),
          ),
    ],
      ),
    );
  }
}
