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

class BioMakers extends StatefulWidget {
  static String route = "BioMakers";

  @override
  _BioMakersState createState() => _BioMakersState();
}

class _BioMakersState extends State<BioMakers> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      //drawer: MyDrawer(),
      appBar: CustomAppBar(
        mainText: "Bio Markers",
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
              isGradient4: true,
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
              myWidget3: Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              ),
              myWidget4: Text(
                "4",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: Color(0xffffffff)),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "Enter your bio markers below. Select the emoticon that best represents your response to each item.",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(60),
              decoration: BoxDecoration(
                color: const Color(0xffEEE0FF),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Biomarkers',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            _reaction(
              Color(0xffF3F3F3),
              "Hunger",
              MyImages.confusedYellow,
              MyImages.normal,
              MyImages.angry,
              MyImages.kiss,
              MyImages.love,
            ),
            _reaction(
              Color(0xffFFFFFF),
              "Energy",
              MyImages.angry,
              MyImages.normal,
              MyImages.angry,
              MyImages.kiss,
              MyImages.loveYellow,
            ),
            _reaction(
              Color(0xffF3F3F3),
              "Mood",
              MyImages.angry,
              MyImages.normalYellow,
              MyImages.angry,
              MyImages.kiss,
              MyImages.love,
            ),
            _reaction(
              Color(0xffFFFFFF),
              "Cravings",
              MyImages.angry,
              MyImages.normal,
              MyImages.angry,
              MyImages.kissYellow,
              MyImages.love,
            ),
            _reaction(
              Color(0xffF3F3F3),
              "Sleep",
              MyImages.confusedYellow,
              MyImages.normal,
              MyImages.angry,
              MyImages.kiss,
              MyImages.love,
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
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
              height: ScreenUtil().setHeight(40),
            ),
            Avater(),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(60),
              decoration: BoxDecoration(
                color: const Color(0xffEEE0FF),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Eye Test',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            _reactionBottom("Do your Clothes fit better",
                MyImages.confusedYellow, MyImages.normal),
            SizedBox(
              height: 3,
            ),
            _reactionBottom("Do your Clothes fit better", MyImages.angry,
                MyImages.normalYellow),
            SizedBox(
              height: 3,
            ),
            _reactionBottom("Do your Clothes fit better", MyImages.angry,
                MyImages.normalYellow),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            Text(
              'Go to the progress area to see your entered results',
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(26),
                color: const Color(0xff282c37),
                fontWeight: FontWeight.w700,
                height: 1.6153846153846154,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
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
                          'Close',
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
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _reaction(
    Color color,
    String title,
    String img1,
    String img2,
    String img3,
    String img4,
    String img5,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ScreenUtil().setHeight(100),
      decoration: BoxDecoration(
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(28),
                color: const Color(0xff141414),
                height: 1.2857142857142858,
              ),
            ),
            Spacer(),
            Image.asset(
              img1,
              height: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              img2,
              height: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              img3,
              height: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              img4,
              height: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              img5,
              height: 35,
            ),
          ],
        ),
      ),
    );
  }

  Widget _reactionBottom(String title, String img1, String img2) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ScreenUtil().setHeight(100),
      decoration: BoxDecoration(
        color: const Color(0xfff3f3f3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(28),
                color: const Color(0xff141414),
                height: 1.2857142857142858,
              ),
            ),
            Spacer(),
            Image.asset(
              img1,
              height: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              img2,
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
