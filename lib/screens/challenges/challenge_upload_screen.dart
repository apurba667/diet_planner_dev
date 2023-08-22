
import 'package:dietplanner/screens/challenges/widget/challenge_screen_top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ChallengeUploadScreen extends StatelessWidget {
  static String route = "ChallengeUploadScreen";

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
                        "Complete Challenge",
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
                title: "Water Before Eating",
                summery: "87% of diet achievers completed this task ",
                img: MyImages.challengeUpload,
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
                  '1-  Weigh yourself in the morning before breakfast, record the result.\n2-  For one day, try drinking 2 glasses of water (about 16 ounces) before each meal.\n3-  Weigh yourself the next morning after waking up and record the result.\n4-  Then write a few sentences about your experience in the box below.\n5-  Click on the "Mark Complete" button Below \n',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(26),
                    color: const Color(0xff000000),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              _challengeDetails("Write a few sentences about your experience drinking 2 glasses of water before each meal for one day.", width),
              _challengeDetails("Did you notice any weight loss?", width),
              _challengeDetails("Did you notice that the 2 glasses of water helped you to eat less Explain", width),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 60,
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
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,)
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 45,
                      width: 260,
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Complete Challenge',
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(26),
                              color: const Color(0xffffffff),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
  Widget _challengeDetails( String txt, var width){
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Container(
        height: 100,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: const Color(0xffffffff),
          border: Border.all(
              width: 1.0, color: const Color(0x57bdbdbd)),
        ),
        child: TextField(
            textAlign: TextAlign.center,

            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintMaxLines: 3,
              hintText: txt,
              border: InputBorder.none,
              hintStyle:
              TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: 13,
                color: const Color(0xffb3b3b3),
              ),

            ),
            autofocus: false
        ),
      ),
    );
  }
}
