import 'package:flutter/material.dart';
import 'package:prac/main.dart';
import 'package:prac/res/appColor.dart';
import 'package:prac/util/allText.dart';
import 'package:prac/util/marginPadding.dart';

class HomeButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final String title;
  final String? header;
  final Color? color;
  final Color? iconColor;
  const HomeButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      required this.title,
      this.header,
      this.color,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: screenWidth * 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              header == null
                  ? Container(
                      margin: AllMargin.customVerticalSmall(),
                      padding: AllMargin.customMarginCardItemSameSmall(),
                      decoration: BoxDecoration(
                          color: color == null
                              ? AppColor.primaryColor.withOpacity(0.2)
                              : color!,
                          borderRadius: BorderRadius.circular(1000)),
                      child: Icon(
                        icon,
                        color: iconColor == null ? AppColor.black : iconColor!,
                      ),
                    )
                  : Container(
                      margin: AllMargin.customVerticalSmall(),
                      decoration: BoxDecoration(
                          color: color == null
                              ? AppColor.primaryColor.withOpacity(0.2)
                              : color!,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100))),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: AppColor.deepYellow.withOpacity(0.8)),
                            child: nanoSmallText(header!,
                            fontWeight: FontWeight.bold,
                                center: true, color: AppColor.black),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Container(
                            child: Icon(
                              icon,
                              color: iconColor == null
                                  ? AppColor.black
                                  : iconColor!,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                        ],
                      ),
                    ),
              Container(
                child:
                    extraSmallText(title, center: true, color: AppColor.black),
              ),
            ],
          ),
        ));
  }
}
