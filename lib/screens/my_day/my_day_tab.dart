
import 'package:dietplanner/screens/my_day/select_diet_buddy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/custom_width.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDayTab extends StatefulWidget {
  @override
  _MyDayTabState createState() => _MyDayTabState();
}

class _MyDayTabState extends State<MyDayTab> {
  var lightGreen = Color(0xff77C5B8);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: ScreenUtil().setHeight(400),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Images/girl2.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: ScreenUtil().setHeight(50),
                  left: ScreenUtil().setWidth(140),
                  child: Column(
                    children: [
                      Text(
                        "Select Your Diet Buddy",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(40),
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: ScreenUtil().setHeight(90),
                        width: ScreenUtil().setWidth(400),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xff317eee),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 5),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: ScreenUtil().setSp(30),
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Read Full Details Below",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(25),
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: lightGrey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, bottom: 10, top: 10),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: Colors.blue),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * .08,
                              width: MediaQuery.of(context).size.width * .09,
                              decoration: BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontFamily: 'HK Grotesk',
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                .04),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        CustomWidth(
                          widths: .01,
                        ),
                        _number("2", Colors.blue),
                        CustomWidth(
                          widths: .01,
                        ),
                        _number("3", Colors.blue),
                        CustomWidth(
                          widths: .01,
                        ),
                        _number("4", Colors.grey),
                        CustomWidth(
                          widths: .01,
                        ),
                        _number("5", Colors.grey),
                        CustomWidth(
                          widths: .01,
                        ),
                        _number("6", Colors.grey),
                        Spacer(),
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        fontFamily: 'HK Grotesk',
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                .06,
                                        color: lightGreen,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    " of",
                                    style: TextStyle(
                                      fontFamily: 'HK Grotesk',
                                      fontSize: ScreenUtil().setSp(40),
                                      color: const Color(0xff707070),
                                    ),
                                  ),
                                  Text(
                                    " 6",
                                    style: TextStyle(
                                      fontFamily: 'HK Grotesk',
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .06,
                                      color: lightGreen,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "mods completed",
                              style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: ScreenUtil().setSp(18),
                                color: const Color(0xff707070),
                                height: 1.25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 10, right: 15, left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Week 3 Day 5 check-in",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(28),
                            color: const Color(0xffc64385),
                            fontWeight: FontWeight.w700,
                            height: 1.2857142857142858,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomHeight(
              height: .01,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/girl.jpg"))),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Coach mandy",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff1d2a38),
                          letterSpacing: 0.26352939605712894,
                          fontWeight: FontWeight.w600,
                          height: 1.2857142857142858,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .006,
                      ),
                      Text(
                        "DCN-C, FDN-P, CCN",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(22),
                          color: const Color(0xffc64385),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Icons/heart.png",
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Text(
                            "  1125",
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(25),
                              color: const Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomWidth(
                    widths: .03,
                  ),
                  Container(
//
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Icons/chat marron.png",
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Text(
                            "  348 ",
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(25),
                              color: const Color(0xff000000),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomHeight(
              height: .02,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(80),
              decoration: BoxDecoration(
                color: const Color(0xffEEE0FF),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Your Diet Buddy',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(24),
                    color: const Color(0xb3000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            CustomHeight(
              height: .02,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Dieting is always easier and much more effective when you can diet with someone else. Nobady wants to alone. With Diet Achiever you don't have to. ",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xff6d819c),
                    fontWeight: FontWeight.w600),
              ),
            ),
            CustomHeight(
              height: .02,
            ),
            Center(
              child: Text(
                "Introducing Diet Buddies",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(40),
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFF7443),
                ),
              ),
            ),
            CustomHeight(
              height: .02,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "These are real people who have taken our diet challenge and recorded their journey.",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xff6d819c),
                    fontWeight: FontWeight.w600),
              ),
            ),
            CustomHeight(
              height: .02,
            ),
            Center(
              child: Text(
                "How it Works",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(40),
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFF7443),
                ),
              ),
            ),
            CustomHeight(
              height: .02,
            ),
            _container("#1", MyImages.business,
                "Look through the list of Buddy's and select the Buddy you want to take the diet with you"),
            SizedBox(
              height: 5,
            ),
            _container("#2", MyImages.fitness,
                "Each day, you will receive their daily diet buddy video recapping their experience with the diet for the same day you are on"),
            SizedBox(
              height: 5,
            ),
            _container("#3", MyImages.people,
                "Look through the list of Buddy's and select the Buddy you want to take the diet with you"),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: (){Get.to(SelectDietBuddy());},
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: _button("Select Your Diet Buddy"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _number(String num, Color color) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            width: 2.0, color: color),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: MediaQuery.of(context).size.height * .08,
          width: MediaQuery.of(context).size.width * .09,
          decoration: BoxDecoration(
              color: color, shape: BoxShape.circle),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                num,
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    color: Colors.white,
                    fontSize:
                    MediaQuery.of(context).size.width *
                        .04),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _container(String point, String img, String txt) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: ScreenUtil().setHeight(250),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.grey.shade200),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0), //                 <--- border radius here
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  height: ScreenUtil().setHeight(60),
                  width: ScreenUtil().setWidth(100),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                            25.0), //                 <--- border radius here
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // 10% of the width, so there are ten blinds.
                        colors: [
                          const Color(0xffC64385),
                          const Color(0xff4D97FF)
                        ],
                        // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      )),
                  child: Center(
                    child: Text(
                      point,
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(img),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: ScreenUtil().setHeight(200),
                  width: ScreenUtil().setWidth(360),
                  child: Text(
                    txt,
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        color: Color(0xff6d819c),
                        fontSize: ScreenUtil().setHeight(28)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(String buttonTxt) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: ScreenUtil().setHeight(120),
        decoration: BoxDecoration(
          color: lightBlueButtonColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Center(
          child: Text(
            buttonTxt,
            style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: 16,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
