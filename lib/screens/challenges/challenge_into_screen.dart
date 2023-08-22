
import 'package:dietplanner/screens/challenges/widget/challenge_screen_top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengeIntoScreen extends StatefulWidget {
  static String route = "ChallengeIntoScreen";

  @override
  _ChallengeIntoScreenState createState() => _ChallengeIntoScreenState();
}

class _ChallengeIntoScreenState extends State<ChallengeIntoScreen> {
  @override
  Widget build(BuildContext context) {
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
                        "Challenge Intro",
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

              ChallengeScreenTopContainer(title: "Three Compliments Video", summery: "87% of diet achievers completed this task ", img: MyImages.challengeIntroPng,),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
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
                          fontSize: MediaQuery.of(context).size.width * 0.05),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Text(
                  "Yes. This is back by popular demand, but this time it's a little different.So often we go through an entire day, maybe a week, or perhaps even a month without ever giving anyone a genuine compliment. It's so easy to become wrapped up in our life, that we put the metaphorical horse blinders on and we just focus on what we have to do\n\n"
                  "Your goal is to give 3 genuine compliments to people this week. You can select friends, family members, loved ones or complete strangers. We want you to look at other people and find something about them that you truly admire and let them know. Sometimes something simple like a random compliment from someone can completely change their mood and yours. Friendships have been started over a single compliment, long term marriages have resulted from a single random compliment and even people have been brought out of emotional despair all by someone giving them a genuine smile and a compliment.\n\n"
                  " You can't even imagine how something so small can have such a big impact on someone else. It can change their moment, their day and perhaps their entire life. In the process, you might even notice that you will begin to feel",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(26),
                  ),
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
                      'Complete This Challenge',
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
