
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/CustomButton.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../fonts/fonts.dart';
import '../home/home.dart';

class CreateAccount extends StatefulWidget {
  static String route = "createaccount";

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();





  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      appBar: CustomAppBar(
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        mainText: "Your Diet Buddy",
        leftIcon: Icons.arrow_left_sharp,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Meet Diet Buddy Michael",
                  style: TextStyle(
                    fontFamily: Fonts_HK_Grotesk,
                    fontSize: ScreenUtil().setSp(42),
                    color: const Color(0xff01a1e9),
                    fontWeight: FontWeight.w700,
                    height: 1.2857142857142858,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(150),
            ),
            CircleAvatar(
              radius: 80,
              backgroundColor: Color(0xffD2D2D2),
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/Images/demo.jpeg'),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(30)),
            Column(
              children: [
                Text(
                  "Michael Murray",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(32),
                    color: Color(0xff4d97ff),
                    fontWeight: FontWeight.w700,
                    height: 1.375,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(5),
                ),
                Text(
                  "Age: 30",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(24),
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff707070),
                    height: 1.0833333333333333,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(5),
                ),
                Text(
                  "Total Lost Weight:  14lbs",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(24),
                    color: const Color(0xff707070),
                    height: 1.0833333333333333,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(150),
            ),
            Container(
              height: ScreenUtil().setHeight(90),
              width: ScreenUtil().setWidth(657),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xff66d2a1),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Why Choose me?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Container(
              height: ScreenUtil().setHeight(90),
              width: ScreenUtil().setWidth(657),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xff66d2a1),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 2),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "My Video Testimonial",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            InkWell(
              onTap: (){Get.to(HomeScreen());},
              child: Container(
                height: ScreenUtil().setHeight(90),
                width: ScreenUtil().setWidth(657),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color(0xff4d97ff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Choose Josh",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(28),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
