import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/CustomButton.dart';
import '../../custom_widgets/custom_text_input_field.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/registration/custom_registration_progress.dart';
import '../../screens/registration/create_account_step_2.dart';
import '../home/home.dart';

class CreateAccountFirstStep extends StatefulWidget {
  static String route = "Registration01";

  @override
  _CreateAccountFirstStepState createState() => _CreateAccountFirstStepState();
}

class _CreateAccountFirstStepState extends State<CreateAccountFirstStep>
    with TickerProviderStateMixin {
  var passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisible = true;

    chck();

  }

  chck(){
    if(GetStorage().read("initial") != null){
      Get.to(HomeScreen());
    }else{
      GetStorage().write("initial", "1");
    }

  }

  final dotSize = 30.0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
            mainText: "Create Account",
            rightIcon: NotificationBell(
              isNotify: true,
            )),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                RegistrationProgress(
                  isGradient1: true,
                  isGradient2: false,
                  isGradient3: false,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("routeName");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: fbButtonColor),
                      height: ScreenUtil().setHeight(120),
                      width: ScreenUtil().setWidth(600),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "f",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.06),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Create Account with facebook",
                              style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: 16,
                                color: Color(0xffffffff),
                                  fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Row(
                      children: <Widget>[
                        _divider(),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 14,
                            color: Color(0x75757575),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        _divider(),
                      ],
                    ),
                  ),
                ),
                CustomTextInputField(
                  obscureText: true,
                  border: InputBorder.none,
                  hintText: 'First Name',
                  prefixIcon: Icon(Icons.person_outline),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextInputField(
                  obscureText: true,
                  border: InputBorder.none,
                  hintText: 'Second Name',
                  prefixIcon: Icon(Icons.person_outline),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextInputField(
                  obscureText: true,
                  border: InputBorder.none,
                  hintText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                PassTextField(
                  obscureText: true,
                  border: InputBorder.none,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_open),
                ),
                SizedBox(
                  height: 10,
                ),
                PassTextField(
                  obscureText: true,
                  border: InputBorder.none,
                  hintText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock_open),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextInputField(
                  obscureText: true,
                  border: InputBorder.none,
                  hintText: 'Your Username',
                  prefixIcon: Icon(Icons.person_outline),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 40, left: 15, right: 15),
                  child: Container(
                    height: ScreenUtil().setHeight(120),
                    width: ScreenUtil().setWidth(600),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xff4d97ff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: (){Get.to(CreateAccountSecondStep());},
                        child: Text(
                          'Save and continue',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 16,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),

                ),
              ],
            ),
          ),
        ));
  }

  Widget _divider() {
    return Expanded(
      child: new Container(
        child: Divider(
          color: Colors.grey[500],
          height: 36,
        ),
      ),
    );
  }
}
