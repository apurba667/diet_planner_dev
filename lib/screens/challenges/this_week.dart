import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/challenge_exercise_container.dart';
import '../../custom_widgets/custom_height.dart';
import '../my_day/widget/avater.dart';

class ThisWeek extends StatefulWidget {
  @override
  _ThisWeekState createState() => _ThisWeekState();
}

class _ThisWeekState extends State<ThisWeek> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 8),
              child: Row(
                children: [
                  Text(
                    "Week 1 Challenges",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: const Color(0xff707070),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "0",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: Colors.pink,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " of",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: Color(0xff707070),
                    ),
                  ),
                  Text(
                    " 7",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: Colors.pink,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " Completed",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: Color(0xff707070),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 15),
              child: Text(
                "Lorem ipsum dolor sit amet, Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justoduo dolores et ea rebum.Stet clita kasd gubergren, no sea takimate sanctus ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(25),
                  color: const Color(0xff707070),
                  height: 1.5,
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 22, left: 25, bottom: 0),
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 38,
            //         width: 38,
            //         decoration: BoxDecoration(
            //             color: Colors.black,
            //             shape: BoxShape.circle,
            //             image: DecorationImage(
            //                 image: AssetImage("assets/Images/boy.jpg"))),
            //       ),
            //       SizedBox(
            //         width: MediaQuery.of(context).size.width * .03,
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Military Marc",
            //             style: TextStyle(
            //                 fontFamily: 'Roboto',
            //                 fontSize: ScreenUtil().setSp(26),
            //                 fontWeight: FontWeight.w700),
            //           ),
            //           SizedBox(
            //             height: MediaQuery.of(context).size.height * .003,
            //           ),
            //           Text(
            //             "DCN-C, FDN-P, CCN, CPT",
            //             style: TextStyle(
            //               fontFamily: 'Roboto',
            //               fontSize: ScreenUtil().setSp(16),
            //             ),
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            Avater(),
            CustomHeight(
              height: .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ChallengeExerciseContainer(
                        img: "assets/Images/challenge1.jpeg",
                        exerciseName: "Casual Walk",
                      ),
                      ChallengeExerciseContainer(
                        img: "assets/Images/challenge2.jpg",
                        exerciseName: "Push Ups",
                      ),
                      ChallengeExerciseContainer(
                        img: "assets/Images/challenge3.jpg",
                        exerciseName: "Post Your Lunch",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ChallengeExerciseContainer(
                        img: "assets/Images/challenge4.jpg",
                        exerciseName: "Three Compliments",
                      ),
                      ChallengeExerciseContainer(
                        img: "assets/Images/challenge5.jpg",
                        exerciseName: "Push Ups",
                      ),
                      ChallengeExerciseContainer(
                        img: "assets/Images/challenge6.jpg",
                        exerciseName: "Go Liquid",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
