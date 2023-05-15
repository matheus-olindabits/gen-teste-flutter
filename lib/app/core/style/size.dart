import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  double widthLength(double value) => MediaQuery.of(this).size.width * value;
  double heightLength(double value) => MediaQuery.of(this).size.height * value;

  double get statusBarTop => MediaQuery.of(this).padding.top;
  double get statusBarBottom => MediaQuery.of(this).padding.bottom;

  double get heightWithoutStatusBar =>
      MediaQuery.of(this).size.height -
      MediaQuery.of(this).viewPadding.top -
      MediaQuery.of(this).viewPadding.bottom;

  double get heighBottomStatusBar => MediaQuery.of(this).viewPadding.bottom;
}
