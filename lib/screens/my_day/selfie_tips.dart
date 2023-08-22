
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/constants.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';

class SelfieTips extends StatelessWidget {
  static String route = "SelfieTips";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      appBar: CustomAppBar(
        mainText: "Selfie Tips",
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
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Our 6 tips for the best before & after progress photos',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(36),
                  color: const Color(0xff151624),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'To guarantee the best progression photos, here are our top tips. Follow these and you’ll produce pictures that help you stay on track, monitor your progress effectively and reach your weight loss goals. ',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(28),
                  color: const Color(0xff707070),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            _selfieTips("Tip 1: Show your shape", "To compare the changes, you’ll need to see the changes. It’s impossible to do this if you’re wearing a baggy t-shirt or shorts. Form-fitting activewear/swimwear is best. Your stomach area should be visible, as this is a great indicator of weight loss and/or muscle gain.", MyImages.selfie1),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            _selfieTips("Tip 2: Wear the same clothes", "If you can’t wear the same outfit, at least wear something similar every time you take your picture. If you’re proud of your progress, you might want to show others, so we encourage you to avoid posing in your underwear.", MyImages.selfie2),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),

            _selfieTips("Tip 3: Use a plain wall", "Make sure there is no clutter, patterns, bright colors or distracting objects in the background. Also, use the same spot for each time you take your progress shots.", MyImages.selfie3),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),

            _selfieTips("Tip 4: Take a full-body photo at eye level","No mirror selfies. If you find this challenging, ask someone you feel comfortable with to take your photo or use a timer function. Make sure to position your body straight and center to fill the frame.", MyImages.selfie4),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            _selfieTips("ip 5: Stand in natural light", "Try to take your photo in natural daylight. If that isn’t possible, ensure that your room is well lit and there is as much light as possible.", MyImages.selfie5),

            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            _selfieTips("Tip 6: Maintain good posture", "Stand up straight, with your shoulders back and down and arms relaxed at your sides. Recreate the same pose each time.", MyImages.selfie6),

            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bottom line",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(36),
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Take your time getting your photos right — you’ll appreciate it down the line. This is your journey and you should take pride each step of the way. Clear, well-captured progress photos will really help you see just how far you’ve come and will propel you even further to reach your fitness goals.",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(28),
                  color: const Color(0xff707070),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(40),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
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
                    'I got it',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 14,
                      color: const Color(0xffffffff),
                    ),

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
  Widget _selfieTips(String title, String details, String img){
    return  Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(36),
                color: const Color(0xff151624),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Text(
              details,
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(28),
                color: const Color(0xff707070),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Center(child: Image.asset(img))
          ],
        ),
      ),
    );
  }
}
