import 'package:flutter/material.dart';

class WColor {
  // ******** primary colors ********
  static const Color colorPrimary = Color(0xFFe50b14);
  static const Color colorSecond = Color(0xFF000000);

  static const MaterialColor themePrimary = MaterialColor(
    0xFFe50b14,
    <int, Color>{
      50: colorPrimary,
      100: colorPrimary,
      200: colorPrimary,
      300: colorPrimary,
      400: colorPrimary,
      500: colorPrimary,
      600: colorPrimary,
      700: colorPrimary,
      800: colorPrimary,
      900: colorPrimary,
    },
  );
}
