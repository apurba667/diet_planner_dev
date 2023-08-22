import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/custom_text_input_field.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/registration/custom_registration_progress.dart';
import '../home/home.dart';

class CreateAccountThirdStep extends StatefulWidget {
  static String route = "Registration03";

  @override
  _CreateAccountThirdStepState createState() => _CreateAccountThirdStepState();
}

class _CreateAccountThirdStepState extends State<CreateAccountThirdStep>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    // final dotSize=30.0;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          /* leftIcon: Icons.arrow_back,*/
          mainText: "Create Account",
          rightIcon: NotificationBell(
            isNotify: true,
          )),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: <Widget>[
              SizedBox(
                height: 30,
              ),
              RegistrationProgress(
                isGradient1: true,
                isGradient2: true,
                isGradient3: true,
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
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SvgPicture.asset(MyImages.invite),
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text(
                  "Invite your Friends",
                  style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 15,
                      color: const Color(0xffC64385),
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: (Text(
                    "Did you know that members who diet with friends lose weight 3x faster? Invite your friends and share your experience as you begin your journey to healthy lifestyle.",
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 12,
                        color: const Color(0xff707070),
                        fontWeight: FontWeight.w600),
                  )),
                ),
              ),
              _title('Friend Email #1'),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: CustomTextInputField(
                      obscureText: true,
                      border: InputBorder.none,
                      hintText: 'Friend Email',
                    ),
                  ),
                ),
              ),
              _title('Friend Email #2'),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: CustomTextInputField(
                      obscureText: true,
                      border: InputBorder.none,
                      hintText: 'Friend Email',
                    ),
                  ),
                ),
              ),
              _title('Friend Email #3'),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: CustomTextInputField(
                      obscureText: true,
                      border: InputBorder.none,
                      hintText: 'Friend Email',
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 30),
                    child: GestureDetector(
                      onTap: () {

                        Get.offAll(HomeScreen());

                        setState(() {
                          print("hie");
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: ScreenUtil().setHeight(120),
                        decoration: BoxDecoration(
                          color: const Color(0xffFF7443),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: 16,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
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
                          color: const Color(0xff4D97FF),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Center(
                          child: Text(
                            "Invite Friends",
                            style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: 16,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  )),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 15),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'HK Grotesk',
          fontSize: 14,
          color: const Color(0xff757575),
        ),
      ),
    );
  }
}
