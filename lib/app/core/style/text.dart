import 'package:flutter/material.dart';

extension TextStyleValues on TextStyle {
  TextStyle textLight(double size, [Color? color]) => TextStyle(
        fontSize: size,
        fontFamily: 'RobotoRegular',
        fontWeight: FontWeight.w300,
        color: (color == null) ? Colors.black : color,
      );

  TextStyle textRegular(double size, [Color? color]) => TextStyle(
        fontSize: size,
        fontFamily: 'RobotoRegular',
        fontWeight: FontWeight.w400,
        color: (color == null) ? Colors.black : color,
      );

  TextStyle textBold(double size, [Color? color]) => TextStyle(
        fontSize: size,
        fontFamily: 'RobotoRegular',
        fontWeight: FontWeight.w700,
        color: (color == null) ? Colors.black : color,
      );

  TextStyle textExtraBold(double size, [Color? color]) => TextStyle(
        fontSize: size,
        fontFamily: 'RobotoRegular',
        fontWeight: FontWeight.w800,
        color: (color == null) ? Colors.black : color,
      );

  TextStyle textUnderlineStyle(double size, Color? color) => TextStyle(
        fontSize: size,
        fontFamily: 'RobotoRegular',
        decoration: TextDecoration.underline,
      );
}
