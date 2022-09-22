import 'package:flutter/material.dart';

class UtilsComponents {
  static Decoration getBoxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xff000000),
          Color(0xff000000),
          Color(0xFF000000),
          Color(0xFF000000),
          Color(0xCC000000),
        ],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      ),
    );
  }
}
