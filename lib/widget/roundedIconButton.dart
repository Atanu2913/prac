import 'package:flutter/material.dart';
import 'package:prac/main.dart';
import 'package:prac/res/appColor.dart';
import 'package:prac/util/allText.dart';
import 'package:prac/util/marginPadding.dart';

class RoundedIconButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final String? title;
  final Color? color;
  final Color? iconColor;
  const RoundedIconButton(
      {Key? key, required this.onTap, required this.icon, this.title,this.color,this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: screenWidth*0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: AllMargin.customMarginCardItemSameSmall(),
                decoration: BoxDecoration(
                    color:color==null? AppColor.lightBlack:color!,
                    borderRadius: BorderRadius.circular(1000)),
                child: Icon(
                  icon,
                  color: iconColor==null? AppColor.white:iconColor!,
                ),
              ),
              title == null
                  ? Container()
                  : Container(
                      margin: AllMargin.customTop(),
                      padding: AllMargin.customMarginCardItemSameSmall(),
                      decoration: BoxDecoration(
                          color: AppColor.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5)),
                      child: extraSmallText(title!,center: true),
                    ),
            ],
          ),
        ));
  }
}
