import 'package:flutter/material.dart';

class PaddingSizedsUtility {
  static double hugePaddingValue = 125.0;
  static double hightPaddingValue = 55.0;
  static double normalPaddingValue = 16.0;
  static double mediumPaddingValue = 10.0;
  static double smallPaddingValue = 5.0;

  static EdgeInsets horizontal(double padding) =>
      EdgeInsets.symmetric(horizontal: padding);
  static EdgeInsets vertical(double padding) =>
      EdgeInsets.symmetric(vertical: padding);
  static EdgeInsets left(double padding) => EdgeInsets.only(left: padding);
  static EdgeInsets right(double padding) => EdgeInsets.only(right: padding);
  static EdgeInsets top(double padding) => EdgeInsets.only(top: padding);
  static EdgeInsets bottom(double padding) => EdgeInsets.only(bottom: padding);
  static EdgeInsets all(double padding) => EdgeInsets.all(padding);
}

class MarginSizedsUtility {
  static double hugeMarginValue = 125.0;
  static double hightMarginValue = 55.0;
  static double normalMarginValue = 16.0;
  static double mediumMarginValue = 10.0;
  static double smallMarginValue = 5.0;

  static EdgeInsets horizontal(double padding) =>
      EdgeInsets.symmetric(horizontal: padding);
  static EdgeInsets vertical(double padding) =>
      EdgeInsets.symmetric(vertical: padding);
  static EdgeInsets left(double padding) => EdgeInsets.only(left: padding);
  static EdgeInsets right(double padding) => EdgeInsets.only(right: padding);
  static EdgeInsets top(double padding) => EdgeInsets.only(top: padding);
  static EdgeInsets bottom(double padding) => EdgeInsets.only(bottom: padding);
  static EdgeInsets all(double padding) => EdgeInsets.all(padding);
}
