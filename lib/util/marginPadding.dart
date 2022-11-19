import 'package:flutter/material.dart';
import 'package:prac/main.dart';

class AllMargin {
  static EdgeInsets customMarginCardItem() {
    return EdgeInsets.symmetric(
        horizontal: screenWidth * 0.03, vertical: screenWidth * 0.015);
  }
  static EdgeInsets customMarginCardItemSame() {
    return EdgeInsets.symmetric(
        horizontal: screenWidth * 0.03, vertical: screenWidth * 0.03);
  }
  static EdgeInsets customMarginCardItemSameSmall() {
    return EdgeInsets.symmetric(
        horizontal: screenWidth * 0.015, vertical: screenWidth * 0.015);
  }

  static EdgeInsets customHorizontal() {
    return EdgeInsets.symmetric(horizontal: screenWidth * 0.03);
  }
  static EdgeInsets customHorizontalLarge() {
    return EdgeInsets.symmetric(horizontal: screenWidth * 0.04);
  }
  static EdgeInsets customRight() {
    return EdgeInsets.only(right: screenWidth * 0.03);
  }
  static EdgeInsets customRightSmall() {
    return EdgeInsets.only(right: screenWidth * 0.015);
  }
  static EdgeInsets customHorizontalSmall() {
    return EdgeInsets.symmetric(horizontal: screenWidth * 0.01);
  }
  static EdgeInsets customLeft() {
    return EdgeInsets.symmetric(horizontal: screenWidth * 0.015);
  }
  static EdgeInsets customLeftLarge() {
    return EdgeInsets.symmetric(horizontal: screenWidth * 0.03);
  }
  static EdgeInsets customVertical() {
    return EdgeInsets.symmetric(vertical: screenWidth * 0.015);
  }
  static EdgeInsets customVerticalLarge() {
    return EdgeInsets.symmetric(vertical: screenWidth * 0.03);
  }
  static EdgeInsets customVerticalSmall() {
    return EdgeInsets.symmetric(vertical: screenWidth * 0.01);
  }
  static EdgeInsets customBottom() {
    return EdgeInsets.only(bottom: screenWidth * 0.03);
  }
  static EdgeInsets customBottomLarge() {
    return EdgeInsets.only(bottom: screenWidth * 0.1);
  }
  static EdgeInsets customBottomSmall() {
    return EdgeInsets.only(bottom: screenWidth * 0.015);
  }
  static EdgeInsets customTop() {
    return EdgeInsets.only(top: screenWidth * 0.03);
  }
  static EdgeInsets customSmallBottom() {
    return EdgeInsets.only(bottom: screenWidth * 0.015);
  }
}
