
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/custom_width.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeasurementDay extends StatefulWidget {
  static String route = "MeasurementDay";

  @override
  _MeasurementDayState createState() => _MeasurementDayState();
}

class _MeasurementDayState extends State<MeasurementDay> {
  var lightGreen = Color(0xff77C5B8);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(400),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(MyImages.bannerPng), fit: BoxFit.cover),
              ),
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
                        _number("1", Colors.blue),
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
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.0, color: Color(0xffC64385)),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * .04,
                              width: MediaQuery.of(context).size.width * .08,
                              decoration: BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "4",
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
                                    "4",
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
                ],
              ),
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
                  'Measurement Day',
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
                "Measuring yourself is one of the best ways to see your weight loss progress. It's never easy in the beginning, but you will love seeing your results.",
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
                "Introducing Measurement Day",
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
                "Measurement Day happens once per week and is a three part process. We track your weight, your photos, and your biomarkers, to help you keep track of your true performance in this program.",
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
            _container("#1", MyImages.footprint,
                "In this program, the scale is your best friend. It will make you smile every time you step on it. So be proud of your hard work and enjoy the results!"),
            SizedBox(
              height: 5,
            ),
            _container("#2", MyImages.selfies,
                "Selfies are a great way to help you visually track your progress. As you slim down on this program, you will look back at these selfies with pride."),
            SizedBox(
              height: 5,
            ),
            _container("#3", MyImages.happy,
                "The last step for measurement day is tracking your bio markers. These bio markers help show you the subtle differences in your hunger, cravings, mood \ and even social compliments."),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: _button("Submit Your Measurements Now!"),
            )
          ],
        ),
      ),
    );
  }

  Widget _number(String num, Color color) {
    return Container(
      height: MediaQuery.of(context).size.height * .04,
      width: MediaQuery.of(context).size.width * .08,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            num,
            style: TextStyle(
                fontFamily: 'HK Grotesk',
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width * .04),
          ),
        ],
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
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  height: ScreenUtil().setHeight(200),
                  width: ScreenUtil().setWidth(360),
                  child: Text(
                    txt,
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        color: Color(0xff6d819c),
                        fontSize: ScreenUtil().setHeight(25)),
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
      child: GestureDetector(
        onTap: () {
          setState(() {
            print("hie");
          });
        },
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
      ),
    );
  }
}
