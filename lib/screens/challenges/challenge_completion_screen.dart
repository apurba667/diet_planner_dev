
import 'package:dietplanner/screens/challenges/widget/challenge_screen_top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengeCompletion extends StatelessWidget {
  static String route = "ChallengeCompletion";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[blueColor, pinkColor])),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        "Challenge Completion",
                        style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            color: whiteColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(
                        Icons.cancel,
                        color: whiteColor,
                      )
                    ],
                  ),
                ),
              ),
              ChallengeScreenTopContainer(
                title: "Post Your Goals",
                summery: "87% of diet achievers completed this task ",
                img: MyImages.challengeGoals,
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To complete this challenge:",
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          color: Color(0xff151624),
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context).size.width * 0.05),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 20),
                child: Text(
                  'You have completed the "Post Your Goals" challenge. When you post your goals where you have to see them every day, studies show you are more likely to achiever your goals. Why? This is the amazing effect of the subconscious mind. Your mind is always working and if you keep reading your goals, your mind starts to realize this is very important and it will work toward helping you achieve your goals on a subconscious level. Keep up the good work! \nDon\'t forget to try the other challenges this week to maximize your weight loss results on this program. \n',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(26),
                    color: const Color(0xff000000),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                child: Container(
                  height: 45,
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
                      'Close',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(26),
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
