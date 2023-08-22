import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/custom_text_input_field.dart';
import 'dart:ui';

import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/registration/custom_registration_progress.dart';
import '../../screens/registration/create_account_step_3.dart';

class CreateAccountSecondStep extends StatefulWidget {
  static String route = "Registration02";

  @override
  _CreateAccountSecondStepState createState() =>
      _CreateAccountSecondStepState();
}

class _CreateAccountSecondStepState extends State<CreateAccountSecondStep>
    with TickerProviderStateMixin {
  var isSingleTapped1 = false;

  late String _dropDownValue;

  var genderMale = 'assets/Images/avatar.png';
  var genderFemale = 'assets/Images/standing-female.png';
  bool isMale = true;

  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        /* leftIcon: Icons.arrow_back,*/
        mainText: "Create Account",
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            RegistrationProgress(
              isGradient1: true,
              isGradient2: true,
              isGradient3: false,
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
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500),
              ),
              myWidget3: Text(
                "3",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Tell Us about Your Goals",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: 18,
                color: const Color(0xffc64385),
                fontWeight: FontWeight.w700,
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Container(
                child: Column(children: <Widget>[
                  _categoryTitle("Date Of Birth"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xffF4F5F7),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: CustomTextInputField(
                        obscureText: true,
                        border: InputBorder.none,
                        hintText: 'MM/DD/YYYY',
                        suffixIcon: Icon(
                          Icons.calendar_today_outlined,
                        ),
                      ),
                    ),
                  ),
                  _categoryTitle("Height"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        _customContainer("Feet"),
                        SizedBox(
                          width: 10,
                        ),
                        _customContainer("Inches"),
                      ],
                    ),
                  ),
                  _categoryTitle("What is your goal?"),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: DropdownButton(
                        underline: Container(color: Colors.transparent),
                        hint: _dropDownValue == null
                            ? Text(
                                'Lose 1 pound per week',
                                style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  fontSize: 15,
                                  color: const Color(0xff757575),
                                ),
                              )
                            : Text(
                                _dropDownValue,
                              ),
                        isExpanded: true,
                        iconSize: 30.0,
                        items: [
                          'Lose 2 pound per week',
                          'Lose 3 pound per week',
                          'Lose 3 pound per week'
                        ].map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(
                                val,
                                style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  fontSize: 15,
                                  color: const Color(0xff757575),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          setState(
                            () {
                              _dropDownValue = val!;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Current Weight",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 14,
                            color: const Color(0xff757575),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Goal Weight",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 14,
                            color: const Color(0xff757575),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _customContainer("Pounds"),
                      SizedBox(
                        width: 10,
                      ),
                      _customContainer("Pounds"),
                      SizedBox(
                        width: 10,
                      ),
                      _customContainer("(Optional)"),
                    ],
                  ),
                  _categoryTitle("Gender"),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          if (isMale != true) {
                            isMale = true;
                          }
                          setState(() {});
                        },
                        child: Container(
                          height: ScreenUtil().setHeight(80),
                          width: ScreenUtil().setWidth(200),
                          decoration: BoxDecoration(
                            color: isMale == true
                                ? Color(0xff66D2A1)
                                : Color(0xffF4F5F7),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Image.asset(
                              genderMale,
                              color: isMale == true
                                  ? Colors.white
                                  : Color(0xff757575),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (isMale != false) {
                            isMale = false;
                          }
                          setState(() {});
                        },
                        child: Container(
                          height: ScreenUtil().setHeight(80),
                          width: ScreenUtil().setWidth(200),
                          decoration: BoxDecoration(
                            color: isMale == false
                                ? Color(0xff66D2A1)
                                : Color(0xffF4F5F7),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Image.asset(
                              genderFemale,
                              color: isMale == false
                                  ? Colors.white
                                  : Color(0xff757575),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  _button("See your Recommended Goals"),
                  SizedBox(
                    height: 15,
                  ),
                  _categoryTitle(
                      "Based on your current height and weight, we recommend a goal to go from 215 to 173 pounds(lose 42 pounds) by February 23,2021"),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 1.0, color: Colors.grey.shade200),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                            5.0), //                 <--- border radius here
                      ),
                    ),
                    height: ScreenUtil().setHeight(250),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/Images/goal.png',
                            height: 60,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Your Goal",
                                style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  fontSize: 14,
                                  color: const Color(0xff6a6868),
                                  fontWeight: FontWeight.w700,
                                  height: 1.2857142857142858,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "215 to 173 pounds",
                                  style: TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    fontSize: 15,
                                    color: const Color(0xff565656),
                                    height: 1.2857142857142858,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "by February 2021 , you can edit this goal after completing goal after completing our quick setup ",
                                  style: TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    fontSize: 12,
                                    color: const Color(0xff707070),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 1.0, color: Colors.grey.shade200),
                      borderRadius: BorderRadius.all(Radius.circular(
                              5.0) //                 <--- border radius here
                          ),
                    ),
                    height: ScreenUtil().setHeight(250),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/Images/yourgoal.png',
                            height: 60,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Change your goals easily",
                                style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  fontSize: 15,
                                  color: const Color(0xff6a6868),
                                  fontWeight: FontWeight.w700,
                                  height: 1.2857142857142858,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "You can easily change this goal  and also get more guidance on setting goals anytime after setup.",
                                  style: TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    fontSize: 12,
                                    color: const Color(0xff707070),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: _button("Save and continue"),
                  ),
                ]),
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget _categoryTitle(String title) {
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

  Widget _customContainer(String txt) {
    return Container(
      width: ScreenUtil().setWidth(200),
      decoration: BoxDecoration(
        color: Color(0xffF4F5F7),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 5),
        child: CustomTextInputField(
          obscureText: true,
          border: InputBorder.none,
          hintText: txt,
        ),
      ),
    );
  }

  Widget _button(String buttonTxt) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: GestureDetector(
        onTap: () {
            Get.to(CreateAccountThirdStep());
         /* setState(() {
            print("hie");
            isSingleTapped1 = true;
          });*/
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
