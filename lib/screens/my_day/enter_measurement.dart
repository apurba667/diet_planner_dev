import 'package:dietplanner/screens/my_day/widget/avater.dart';
import 'package:dietplanner/screens/my_day/widget/measurement_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/CustomButton.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';


class EnterMeasurement1 extends StatefulWidget {
  static String route = "EnterMeasurement1";

  @override
  _EnterMeasurement1State createState() => _EnterMeasurement1State();
}

class _EnterMeasurement1State extends State<EnterMeasurement1> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      //drawer: MyDrawer(),
      appBar: CustomAppBar(
        mainText: "Enter Measurements",
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
              isGradient2: true,
              isGradient3: true,
              isGradient4: false,
              myWidget1: Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              ),
              myWidget2: Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              ),
              myWidget3: Text(
                "3",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: Color(0xffffffff)),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "(Totally Optional)",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(48),
                      color: Color(0xff151624),
                      fontWeight: FontWeight.w700,
                      height: 1.0416666666666667,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
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
                        child: FaIcon(
                      FontAwesomeIcons.question,
                      size: 15,
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "The scale is not the only way to guage your progress and success on this program. For many people, they will first notice results in terms of inches lost when they take their measurements. If you are interested to track your measurement progress, please enter your results below.",
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
            _measurementInpu("Chest (inches)"),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            _measurementInpu("Waist (inches)"),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            _measurementInpu("Hip (inches)"),

            SizedBox(
              height: ScreenUtil().setHeight(40),
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
                        borderRadius: BorderRadius.circular(10.0),
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
                          'Skip',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(24),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Clicke");
                      },
                      child: Container(
                        height: ScreenUtil().setHeight(80),
                        width: ScreenUtil().setWidth(360),
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

  Widget _measurementInpu( String txt) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: ScreenUtil().setHeight(125),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.grey.shade200),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0), //                 <--- border radius here
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txt,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(24),
                  color: Color(0xffaeaeae),
                ),
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
    );
  }
}
