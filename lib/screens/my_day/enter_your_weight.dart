import 'package:dietplanner/screens/my_day/widget/avater.dart';
import 'package:dietplanner/screens/my_day/widget/measurement_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/CustomButton.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterYourWeight extends StatefulWidget {
  static String route = "EnterYourWeight";

  @override
  _EnterYourWeightState createState() => _EnterYourWeightState();
}

class _EnterYourWeightState extends State<EnterYourWeight> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      //drawer: MyDrawer(),
      appBar: CustomAppBar(
        mainText: "Enter Your Weight",
        leftIcon: Icons.arrow_back,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no.",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.w600),
              ),
            ),

            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Avater(),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            MeasurementProgress(
              isGradient1: true,
              isGradient2: false,
              isGradient3: false,
              isGradient4: false,
              myWidget1: Text(
                "1",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 14,
                  color: Color(0xffffffff),
                ),
              ),
              myWidget2: Text(
                "2",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: Color(0xff000000)),
              ),
              myWidget3: Text(
                "3",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: Color(0xff000000)),
              ),
              myWidget4: Text(
                "4",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: Color(0xff000000)),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //       left: ScreenUtil().setWidth(80),
            //       right: ScreenUtil().setWidth(20)),
            //   child: Row(
            //     //crossAxisAlignment: CrossAxisAlignment.center,
            //     //mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         "Weight",
            //         style: TextStyle(
            //             fontFamily: 'Roboto',
            //             fontSize: ScreenUtil().setSp(20),
            //             color: const Color(0xb3000000),
            //             fontWeight: FontWeight.w500),
            //       ),
            //       SizedBox(
            //         width: 60,
            //       ),
            //       Text(
            //         "Selfie",
            //         style: TextStyle(
            //             fontFamily: 'Roboto',
            //             fontSize: ScreenUtil().setSp(20),
            //             color: const Color(0xb3000000),
            //             fontWeight: FontWeight.w500),
            //       ),
            //       SizedBox(
            //         width: 30,
            //       ),
            //       Text(
            //         "Measurements",
            //         style: TextStyle(
            //             fontFamily: 'Roboto',
            //             fontSize: ScreenUtil().setSp(20),
            //             color: const Color(0xb3000000),
            //             fontWeight: FontWeight.w500),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text(
            //         "Bio Markers",
            //         style: TextStyle(
            //             fontFamily: 'Roboto',
            //             fontSize: ScreenUtil().setSp(20),
            //             color: const Color(0xb3000000),
            //             fontWeight: FontWeight.w500),
            //       ),
            //     ],
            //   ),
            // ),

            Text(
              "Time To Shine ",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(48),
                color: Color(0xff151624),
                fontWeight: FontWeight.w700,
                height: 1.0416666666666667,
              ),
            ),

            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "Today is a day to celebrate your weight loss. Remember-everyone loses weight at their own individual pace. No matter what today's scale result is, just remember to keep your head up and learn to enjoy the process. This program is not a race, it is a journey :) ",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.w600),
              ),
            ),

            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),

            SvgPicture.asset(MyImages.footprintSearch),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: ScreenUtil().setHeight(80),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey.shade200),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                        5.0), //                 <--- border radius here
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    children: [
                      Text(
                        'Enter Your Weight',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 14,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      VerticalDivider(
                        thickness: 1,
                      ),
                      Container(
                        width: ScreenUtil().setWidth(100),
                        child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            autofocus: false),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //textfield

            SizedBox(
              height: ScreenUtil().setHeight(10)
            ),
            Text(
              "Your new weight will update the chart and the entries area below",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(20),
                color: const Color(0xff151624),
                height: 1.8,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20)
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(80),
                      width: ScreenUtil().setWidth(256),
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10.0),
                        color: const Color(0xffaeaeae),
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
                          'Close',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize:ScreenUtil().setSp(24),
                            color: const Color(0xffffffff),
                          ),

                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        print("Clicke");
                      },
                      child: Container(
                        height: ScreenUtil().setHeight(80),
                        width: ScreenUtil().setWidth(360),
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(10.0),
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
                            'Save & Continue',
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(24),
                              color: const Color(0xffffffff),
                            ),

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
