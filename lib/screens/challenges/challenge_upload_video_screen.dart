
import 'package:dietplanner/screens/challenges/widget/challenge_screen_top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengeUploadVideo extends StatelessWidget {
  static String route = "ChallengeUploadVideo";
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
                        "Upload Challenge Video",
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
                title: "Three Compliments Video",
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
                  '1-  Take your time this week to give three different people a genuine compliment. Try to elaborate on the compliment and give them some details as to why you noticed something you admire about them.\n2-  Take a 1-minute selfie video that talks about the following:\n3-  Describe your experience over the last 4 weeks of giving people genuine compliments.\n4-  Has anything surprised you in any way as a result of giving out compliments?\n5-  Have you noticed any positive changes in yourself as a result? \n6-  Upload the video to us.\n7-  Click on the "Mark Complete" button Below \n',
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
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color(0xfff7f7f7),
                  ),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cloud_upload_outlined, color: Color(0xffbfbdbe),),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Upload Video',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 14,
                            color: const Color(0xffbfbdbe),
                            fontWeight: FontWeight.w500

                          ),

                        ),
                      ],

                    )
                  ),
                ),
              ),
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.local_movies, color: Colors.white, size: 15,),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Complete Challenge',
                                style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  fontSize: ScreenUtil().setSp(26),
                                  color: const Color(0xffffffff),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
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
}
