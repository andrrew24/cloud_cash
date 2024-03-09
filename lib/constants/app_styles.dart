// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

abstract class Styles {
  Styles._();

  static TextStyle lato8(BuildContext context) {
    return TextStyle(
        fontFamily: 'Lato', fontSize: getRspnsveFntSize(context, 8));
  }

  static TextStyle lato14(BuildContext context) {
    return TextStyle(
        fontFamily: 'Lato', fontSize: getRspnsveFntSize(context, 14));
  }

  static TextStyle lato16(BuildContext context) {
    return TextStyle(
        fontFamily: 'Lato', fontSize: getRspnsveFntSize(context, 16));
  }

  static TextStyle lato18(BuildContext context) {
    return TextStyle(
        fontFamily: 'Lato', fontSize: getRspnsveFntSize(context, 18));
  }

  static TextStyle lato20(BuildContext context) {
    return TextStyle(
        fontFamily: 'Lato', fontSize: getRspnsveFntSize(context, 20));
  }

  static TextStyle lato24(BuildContext context) {
    return TextStyle(
        fontFamily: 'Lato', fontSize: getRspnsveFntSize(context, 24));
  }

  static TextStyle lato12(BuildContext context) {
    return TextStyle(
        fontFamily: 'Lato', fontSize: getRspnsveFntSize(context, 12));
  }

  static TextStyle lato44(BuildContext context) {
    return TextStyle(
        fontFamily: 'Lato', fontSize: getRspnsveFntSize(context, 44));
  }
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    return width / 400;
  } else if (width < 900)
    return width / 700;
  else
    return width / 1000;
}

double getRspnsveFntSize(BuildContext context, double fontSize) {
  double scaleFactor = getScaleFactor(context);

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  double responsiveFontSize = fontSize * scaleFactor;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
