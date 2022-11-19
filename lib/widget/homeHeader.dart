import 'package:flutter/material.dart';
import 'package:prac/main.dart';
import 'package:prac/res/appColor.dart';
import 'package:prac/util/allText.dart';
import 'package:prac/util/marginPadding.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFD8E2E7),
                  Color(0xff6ea0b7),
                ],
              ),
            ),
      margin: AllMargin.customTop(),
      padding: AllMargin.customTop(),
      height: screenHeight * 0.1,
      child: Container(
        padding: AllMargin.customHorizontal(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: screenWidth * 0.1,
              width: screenWidth * 0.1,
              child: Stack(
                children: [
                  Container(
                    width: screenWidth * 0.09,
                    height: screenWidth * 0.09,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(1000)),
                    child: Icon(Icons.person, size: screenWidth * 0.05),
                  ),
                  Positioned(
                    left: screenWidth * 0.05,
                    bottom: screenWidth * 0.01,
                    child: Container(
                      width: screenWidth * 0.04,
                      height: screenWidth * 0.04,
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(1000)),
                      child: Icon(Icons.menu, size: screenWidth * 0.02),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/paytm.png',
                height: screenWidth * 0.1,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    height: screenWidth * 0.1,
                    width: screenWidth * 0.1,
                    child: Container(
                      width: screenWidth * 0.09,
                      height: screenWidth * 0.09,
                      decoration: BoxDecoration(
                          color: AppColor.transparentColor,
                          borderRadius: BorderRadius.circular(1000)),
                      child: Icon(
                        Icons.search_outlined,
                        color: AppColor.white,
                        size: screenWidth * 0.05,
                      ),
                    ),
                  ),
                  Container(
                    height: screenWidth * 0.1,
                    width: screenWidth * 0.1,
                    child: Stack(
                      children: [
                        Container(
                          width: screenWidth * 0.09,
                          height: screenWidth * 0.09,
                          decoration: BoxDecoration(
                              color: AppColor.transparentColor,
                              borderRadius: BorderRadius.circular(1000)),
                          child: Icon(Icons.comment_bank_outlined,
                              color: AppColor.white, size: screenWidth * 0.05),
                        ),
                        Positioned(
                          left: screenWidth * 0.05,
                          top: screenWidth * 0.01,
                          child: Container(
                            width: screenWidth * 0.04,
                            height: screenWidth * 0.04,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColor.red,
                                borderRadius: BorderRadius.circular(1000)),
                            child: extraSmallText('10', center: true),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
