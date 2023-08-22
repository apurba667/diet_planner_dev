
import 'package:dietplanner/screens/excercise/rest_recover.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/CustomButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ExerciseCircuitPlay extends StatefulWidget {
  static String route = "ExerciseCircuitPlay";

  @override
  _ExerciseCircuitPlayState createState() => _ExerciseCircuitPlayState();
}

class _ExerciseCircuitPlayState extends State<ExerciseCircuitPlay> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset(
              MyImages.excercise,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              color: Color(0xffF8F8F8),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "DUMBBEELL DOUBLE FRONT RAISE",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 15,
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    pinkColor.withOpacity(0.9),
                    blueColor.withOpacity(0.8),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircularPercentIndicator(
                          radius: 80.0,
                          lineWidth: 3.0,
                          animation: true,
                          percent: 1,
                          backgroundColor: Colors.white24,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: whiteColor,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Text(
                                "1",
                                style: new TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    color: whiteColor),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Round",
                                style: TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    color: whiteColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.03),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset("assets/iconsSvg/calorie.svg"),
                        // CircularPercentIndicator(
                        //   radius: 120.0,
                        //   lineWidth: 5.0,
                        //   animation: true,
                        //   percent: 0.7,
                        //   backgroundColor: Colors.white24,
                        //   circularStrokeCap: CircularStrokeCap.round,
                        //   progressColor: whiteColor,
                        //   center: Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       new Text(
                        //         "0:42",
                        //         style: new TextStyle(
                        //             fontWeight: FontWeight.bold,
                        //             fontSize:
                        //                 MediaQuery.of(context).size.width *
                        //                     0.05,
                        //             color: whiteColor),
                        //       ),
                        //       SizedBox(
                        //         height: 5,
                        //       ),
                        //       Text(
                        //         "Seconds",
                        //         style: TextStyle(
                        //             color: whiteColor,
                        //             fontWeight: FontWeight.normal,
                        //             fontSize:
                        //                 MediaQuery.of(context).size.width *
                        //                     0.03),
                        //       ),
                        //     ],
                        //   ),
                        //   footer: Text(
                        //     "Remaining",
                        //     style: new TextStyle(
                        //         fontFamily: 'HK Grotesk',
                        //         color: whiteColor,
                        //         fontSize:
                        //             MediaQuery.of(context).size.width * 0.04),
                        //   ),
                        // ),
                        CircularPercentIndicator(
                          radius: 80.0,
                          lineWidth: 3.0,
                          animation: true,
                          percent: 1,
                          backgroundColor: Colors.white24,
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: whiteColor,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              new Text(
                                "3",
                                style: new TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    color: whiteColor),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Exercise",
                                style: TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    color: whiteColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.03),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Next Rest:  0:42",
                    style: TextStyle(fontSize: 20, color: whiteColor, fontFamily: 'HK Grotesk',),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomButton(
                            onPress: () {
                              Navigator.pop(context);
                            },
                            fontSize: 15,
                            bColor: Colors.grey[400]?.withOpacity(0.5),
                            text: "Reset",
                            bHeight: 45,
                            borderRadius: BorderRadius.circular(10.0),
                            fontColor: whiteColor,
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){Get.to(RestRecover());},
                            child: CustomButton(
                              fontSize: 15,
                              bColor: blueColor,
                              text: "Pause",
                              bHeight: 45,
                              borderRadius: BorderRadius.circular(10.0),
                              fontColor: whiteColor,
                            ),
                          ),
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
