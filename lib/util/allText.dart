import 'package:flutter/material.dart';
import 'package:prac/util/allTextStyle.dart';
headingText(String text,
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal,
     bool center = false,
    bool overflow = false,
    int? maxLines}) {
  return Text(
    text,  maxLines: maxLines,
    overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
    textAlign: !center ? TextAlign.left : TextAlign.center,
    style: headingTextStyle(color: color, fontWeight: fontWeight),
  );
}
largeText(String text,
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal,
     bool center = false,
    bool overflow = false,
    int? maxLines}) {
  return Text(
    text,  maxLines: maxLines,
    overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
    textAlign: !center ? TextAlign.left : TextAlign.center,
    style: largeTextStyle(color: color, fontWeight: fontWeight),
  );
}

normal2Text(String text,
    {Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    bool center = false,
    bool overflow = false,
    int? maxLines}) {
  return Text(
    text,
    maxLines: maxLines,
    overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
    textAlign: !center ? TextAlign.left : TextAlign.center,
    style: normal2TextStyle(color: color, fontWeight: fontWeight),
  );
}

normalText(String text,
    {Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0, bool center = false,
    bool overflow = false,
    int? maxLines}) {
  return Text(
    text,
        maxLines: maxLines,
    overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
    textAlign: !center ? TextAlign.left : TextAlign.center,
    style: normalTextStyle(
        color: color, fontWeight: fontWeight, letterSpacing: letterSpacing),
  );
}

midNormalText(String text,
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal,
     bool center = false,
    bool overflow = false,
    int? maxLines}) {
  return Text(
    text,  maxLines: maxLines,
    overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
    textAlign: !center ? TextAlign.left : TextAlign.center,
    style: midNormalTextStyle(color: color, fontWeight: fontWeight),
  );
}

smallText(String text,
    {Color color = Colors.white,
    FontWeight fontWeight = FontWeight.normal,
    double letterSpacing = 0,
     bool center = false,
    bool overflow = false,
    int? maxLines
    }) {
  return Text(
    text,
      maxLines: maxLines,
    overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
    textAlign: !center ? TextAlign.left : TextAlign.center,
    style: smallTextStyle(
        color: color, fontWeight: fontWeight, letterSpacing: letterSpacing),
  );
} 

extraSmallText(String text,
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal,
     bool center = false,
    bool overflow = false,
    int? maxLines}) {
  return Text(
    text,  maxLines: maxLines,
    overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
    textAlign: !center ? TextAlign.left : TextAlign.center,
    style: extraSmallTextStyle(color: color, fontWeight: fontWeight),
  );
}
nanoSmallText(String text,
    {Color color = Colors.white, FontWeight fontWeight = FontWeight.normal,
     bool center = false,
    bool overflow = false,
    int? maxLines}) {
  return Text(
    text,  maxLines: maxLines,
    overflow: overflow ? TextOverflow.ellipsis : TextOverflow.visible,
    textAlign: !center ? TextAlign.left : TextAlign.center,
    style: nanoSmallTextStyle(color: color, fontWeight: fontWeight),
  );
}
 