import 'package:flutter/material.dart';

class SCColors {
  static const int _primaryColor = 0xFF625BDE;
  static const int _secondaryColor = 0xFF303030;
  static const int _accentColor = 0xFFF2F2F2;
  static const int _backgroundColor = _secondaryColor;
  static const int _surfaceColor = 0xFF8A8A8A;
  static const int _errorColor = 0xFFD72B2B;

  //colors
  static const Color primary = Color(_primaryColor);
  static const Color secondary = Color(_secondaryColor);
  static const Color accent = Color(_accentColor);
  static const Color background = Color(_backgroundColor);
  static const Color surface = Color(_surfaceColor);
  static const Color error = Color(_errorColor);

  //material color
  static const MaterialColor primaryMaterial = MaterialColor(
    _primaryColor,
    <int, Color>{
      50: Color(0x0d625bde),
      100: Color(0x1A625BDE),
      200: Color(0x33625BDE),
      300: Color(0x4D625BDE),
      400: Color(0x66625BDE),
      500: Color(0x80625BDE),
      600: Color(0x99625BDE),
      700: Color(0xB3625BDE),
      800: Color(0xCC625BDE),
      900: Color(0xE6625BDE),
    },
  );
  static const MaterialColor secondaryMaterial = MaterialColor(
    _secondaryColor,
    <int, Color>{
      50: Color(0x0d303030),
      100: Color(0x1A303030),
      200: Color(0x33303030),
      300: Color(0x4D303030),
      400: Color(0x66303030),
      500: Color(0x80303030),
      600: Color(0x99303030),
      700: Color(0xB3303030),
      800: Color(0xCC303030),
      900: Color(0xE6303030),
    },
  );
  static const MaterialColor accentMaterial = MaterialColor(
    _accentColor,
    <int, Color>{
      50: Color(0x0df2f2f2),
      100: Color(0x1AF2F2F2),
      200: Color(0x33F2F2F2),
      300: Color(0x4DF2F2F2),
      400: Color(0x66F2F2F2),
      500: Color(0x80F2F2F2),
      600: Color(0x99F2F2F2),
      700: Color(0xB3F2F2F2),
      800: Color(0xCCF2F2F2),
      900: Color(0xE6F2F2F2),
    },
  );
  static const MaterialColor backgroundMaterial = SCColors.secondaryMaterial;
  static const MaterialColor surfaceMaterial = MaterialColor(
    _surfaceColor,
    <int, Color>{
      50: Color(0x0d8a8a8a),
      100: Color(0x1A8A8A8A),
      200: Color(0x338A8A8A),
      300: Color(0x4D8A8A8A),
      400: Color(0x668A8A8A),
      500: Color(0x808A8A8A),
      600: Color(0x998A8A8A),
      700: Color(0xB38A8A8A),
      800: Color(0xCC8A8A8A),
      900: Color(0xE68A8A8A),
    },
  );
  static const MaterialColor errorMaterial = MaterialColor(
    _errorColor,
    <int, Color>{
      50: Color(0x0dd72b2b),
      100: Color(0x1AD72B2B),
      200: Color(0x33D72B2B),
      300: Color(0x4DD72B2B),
      400: Color(0x66D72B2B),
      500: Color(0x80D72B2B),
      600: Color(0x99D72B2B),
      700: Color(0xB3D72B2B),
      800: Color(0xCCD72B2B),
      900: Color(0xE6D72B2B),
    },
  );
}
