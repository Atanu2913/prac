import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac/main.dart';
import 'package:prac/res/appColor.dart';
import 'package:prac/screen/scanScreen.dart';
import 'package:prac/util/allText.dart';
import 'package:prac/util/marginPadding.dart';
import 'package:prac/widget/homeButton.dart';
import 'package:prac/widget/homeHeader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColor.scanColor,
          onPressed: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => ScanScreen()));
          },
          icon: Icon(Icons.qr_code),
          label: normalText('Scan Any QR')),
      body: Stack(
        children: [
          Container(
            width: screenWidth,
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
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                HomeHeader(),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff6ea0b7),
                          Color(0xFFD8E2E7),
                        ],
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.bg,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          )),
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        children: [
                          
                          upiCard()],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget upiCard() {
    return Container(
      margin: AllMargin.customHorizontal(),
      padding: AllMargin.customBottom(),
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: AppColor.greyColor,
          )),
      child: Column(children: [
        upiHeader(),
        Container(
          padding: AllMargin.customHorizontal(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HomeButton(
                    icon: Icons.addchart_outlined,
                    onTap: () {},
                    title: 'Scan & Pay',
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  HomeButton(
                    icon: Icons.book_outlined,
                    onTap: () {},
                    title: 'Balance & Hitory',
                    header: 'Passbook',
                  ),
                ],
              ),
            
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HomeButton(
                    icon: Icons.mobile_friendly_outlined,
                    onTap: () {},
                    title: 'To Mobile',
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  HomeButton(
                    icon: Icons.person_outline,
                    onTap: () {},
                    title: 'To self Account',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HomeButton(
                    icon: Icons.phone_paused_outlined,
                    onTap: () {},
                    title: 'To UPI Apps',
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  HomeButton(
                    icon: Icons.book_outlined,
                    onTap: () {},
                    title: 'Receive Money',
                    header: '⚡ Instant',
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HomeButton(
                    icon: Icons.home_outlined,
                    onTap: () {},
                    title: 'To Bank A/C',
                  ),
                  
                ],
              ),
            
            ],

          ),
        )
      ]),
    );
  }

  Widget upiHeader() {
    return Container(
      width: screenWidth,
      margin: AllMargin.customVertical(),
      padding: AllMargin.customHorizontal(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          normal2Text('UPI Money Transfer',
              fontWeight: FontWeight.bold, color: AppColor.black),
          Container(
            child: Image.asset(
              'assets/images/upi.png',
              height: screenWidth * 0.1,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
