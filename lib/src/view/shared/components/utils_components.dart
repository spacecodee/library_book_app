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
  static Decoration getBoxDecoration2() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF303030),
          Color(0xFF303030),
          Color(0xFF303030),
          Color(0xFF303030),
          Color(0xCC303030),
        ],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      ),
    );
  }
}
