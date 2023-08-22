
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HowToMeasure extends StatefulWidget {
  static String route = "HowToMeasure";

  @override
  _HowToMeasureState createState() => _HowToMeasureState();
}

class _HowToMeasureState extends State<HowToMeasure> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      appBar: CustomAppBar(
        mainText: 'How To Measure',
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        leftIcon: Icons.arrow_back,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            SvgPicture.asset(
              MyImages.human,
              height: 300,
              width: 400,
            ),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How To Measure",
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        color: const Color(0xff151624),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 1,
                color: Colors.grey.withOpacity(.1),
                thickness: 1.5,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            _measurementDetails("Chest", "Measure around the fullest part of your chest, making sure to keep the tape under your arms and around your shoulder blades."),
            SizedBox(
              height: 10,
            ),
            _measurementDetails("Waist", "Measure around the smallest part of your waist (natural waistline)."),
            SizedBox(
              height: 10,
            ),
            _measurementDetails("Hips", "Stand with your heels together and measure around the fullest part."),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _measurementDetails(String title, String details) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                gradient: LinearGradient(colors: [blueColor, pinkColor])),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(20),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Text(
            details,
            style: TextStyle(
              fontFamily: 'HK Grotesk',
              fontSize: ScreenUtil().setSp(26),
              color: const Color(0xff282c37),

            ),
          )
        ],
      ),
    );
  }
}
