import 'package:flutter/material.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/challenge_exercise_container.dart';
import '../../custom_widgets/custom_height.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../my_day/widget/avater.dart';

class Challenges extends StatefulWidget {
  @override
  _ChallengesState createState() => _ChallengesState();
}

class _ChallengesState extends State<Challenges> {
  String questionmark = 'assets/Images/que.png';
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
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
                )

              ],
            ),
            Column(
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
                )

              ],
            ),
            Column(
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
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*0.2,
                                width: MediaQuery.of(context).size.width*.48,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(questionmark),
                                        fit: BoxFit.fill
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height*.015,
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width*.48,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(questionmark),
                                    fit: BoxFit.fill
                                ),
                                borderRadius: BorderRadius.circular(10)
                            ),

                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.015,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*0.2,
                                width: MediaQuery.of(context).size.width*.48,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(questionmark),
                                        fit: BoxFit.fill
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height*.015,
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width*.48,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(questionmark),
                                    fit: BoxFit.fill
                                ),
                                borderRadius: BorderRadius.circular(10)
                            ),

                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.015,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height*0.2,
                                width: MediaQuery.of(context).size.width*.48,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(questionmark),
                                        fit: BoxFit.fill
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                ),

                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height*.015,
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width*.48,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(questionmark),
                                    fit: BoxFit.fill
                                ),
                                borderRadius: BorderRadius.circular(10)
                            ),

                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.015,
                          )
                        ],
                      ),
                    ),
                  ],
                )

              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
