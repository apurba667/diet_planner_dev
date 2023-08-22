import 'package:dietplanner/screens/my_day/widget/avater.dart';
import 'package:dietplanner/screens/my_day/widget/measurement_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/CustomButton.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import 'package:flutter_svg/flutter_svg.dart';


class EnterSelfie extends StatefulWidget {
  static String route = "EnterSelfie";

  @override
  _EnterSelfieState createState() => _EnterSelfieState();
}

class _EnterSelfieState extends State<EnterSelfie> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      //drawer: MyDrawer(),
      appBar: CustomAppBar(
        mainText: "Selfie Time",
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
              isGradient3: false,
              isGradient4: false,
              myWidget1: Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              ),
              myWidget2: Text(
                "2",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: Color(0xffffffff)),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "Selfie Time",
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
                      borderRadius:
                      BorderRadius.circular(20.0),
                      color: const Color(0xff317eee),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Center(child: FaIcon(FontAwesomeIcons.question, size: 15,color: Colors.white,)),
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
                "This is your moment to shine. Be proud of your accomplishments. Taking selfies is a great way to visually guage your progress and to build your confidence as you bloom into a better slimmer version of yourself on this amazing journey. You can see your selfie history in the progress section. ",

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

            SvgPicture.asset(MyImages.enterSelfie),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),

            Container(
              height: ScreenUtil().setHeight(80),
              width: ScreenUtil().setWidth(440),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffc64385),
              ),
              child: Center(
                child: Text(
                  'Upload Selfie',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(24),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
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
