import 'package:flutter/material.dart';
import 'package:prac/main.dart';
import 'package:prac/res/appColor.dart';

headingTextStyle(
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
      fontSize: screenWidth >= 600 ? screenWidth * 0.042 : screenWidth * 0.051,
      color: color,
      fontWeight: fontWeight);
}
largeTextStyle(
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
      fontSize: screenWidth >= 600 ? screenWidth * 0.065 : screenWidth * 0.065,
      color: color,
      fontWeight: fontWeight);
}

normal2TextStyle(
    {Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    bool lineThrough = false}) {
  return TextStyle(
      fontSize: screenWidth * 0.042,
      color: color,
      fontWeight: fontWeight,
      decorationThickness: 3,
      decorationStyle: TextDecorationStyle.solid,
      decorationColor: AppColor.deepGrey,
      decoration:
          lineThrough ? TextDecoration.lineThrough : TextDecoration.none);
}

normalTextStyle(
    {Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0}) {
  return TextStyle(
      fontSize: screenWidth >= 600 ? screenWidth * 0.03 : screenWidth * 0.039,
      color: color,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight);
}
 
midNormalTextStyle(
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
      fontSize: screenWidth >= 600 ? screenWidth * 0.028 : screenWidth * 0.037,
      color: color,
      fontWeight: fontWeight);
}

smallTextStyle(
    {Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0}) {
  return TextStyle(
      fontSize: screenWidth >= 600 ? screenWidth * 0.025 : screenWidth * 0.034,
      color: color,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing);
}

extraSmallTextStyle(
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
      fontSize: screenWidth >= 600 ? screenWidth * 0.022 : screenWidth * 0.031,
      color: color,
      fontWeight: fontWeight);
}
nanoSmallTextStyle(
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
      fontSize: screenWidth >= 600 ? screenWidth * 0.018 : screenWidth * 0.022,
      color: color,
      fontWeight: fontWeight);
}

extraSmallSmallTextStyle(
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
      fontSize: screenWidth * 0.02, color: color, fontWeight: fontWeight);
}

subTitleStyle({Color color = Colors.white}) {
  return TextStyle(
      fontSize: screenWidth >= 600 ? screenWidth * 0.023 : screenWidth * 0.032,
      color: color);
}
 