import 'package:flutter/material.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/CustomButton.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/custom_width.dart';


class MyDay2 extends StatefulWidget {
  @override
  _MyDay2State createState() => _MyDay2State();
}

class _MyDay2State extends State<MyDay2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/kitchen.jpg"),
                      fit: BoxFit.fill)),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue.withOpacity(0.4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Select Your Diet Buddy",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .05,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    CustomHeight(
                      height: .02,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .45,
                      height: MediaQuery.of(context).size.height * .05,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * .05,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomHeight(
                      height: .02,
                    ),
                    Text(
                      "Read Full Details Below",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .035,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 10, top: 18),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Color(0xffC64385)),
                      shape: BoxShape.circle,
                      /* borderRadius: BorderRadius.all(
                        Radius.circular(20.0) ,
                    )*/
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .04,
                        width: MediaQuery.of(context).size.width * .08,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * .04),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomWidth(
                    widths: .01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width * .08,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "2",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * .06),
                        ),
                      ],
                    ),
                  ),
                  CustomWidth(
                    widths: .01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width * .08,
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "3",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * .06),
                        ),
                      ],
                    ),
                  ),
                  CustomWidth(
                    widths: .01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width * .08,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "4",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * .06),
                        ),
                      ],
                    ),
                  ),
                  CustomWidth(
                    widths: .01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width * .08,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * .06),
                        ),
                      ],
                    ),
                  ),
                  CustomWidth(
                    widths: .01,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .04,
                    width: MediaQuery.of(context).size.width * .08,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "6",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * .06),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .06,
                                color: lightGreen,
                              ),
                            ),
                            Text(
                              " of",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .05,
                                color: GreyColor,
                              ),
                            ),
                            Text(
                              " 6",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * .06,
                                color: lightGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "mods completed",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .024,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 10, right: 15, left: 15),
              child: Row(
                children: [
                  Text(
                    "Week 3 Day 5 check-in",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .040,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            CustomHeight(
              height: .01,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, bottom: 0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/girl.jpg"))),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Coach mandy",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            color: GreyColor),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .006,
                      ),
                      Text(
                        "DCN-C, FDN-P, CCN, CPT",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .03,
                            color: pinkColor),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
//                  height: MediaQuery.of(context).size.height*.03,
//                  width: MediaQuery.of(context).size.width*.2,
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Icons/heart.png",
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Text(
                            "  1125",
                            style: TextStyle(
                                color: GreyColor,
                                fontSize:
                                    MediaQuery.of(context).size.width * .04),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomWidth(
                    widths: .03,
                  ),
                  Container(
//
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Icons/chat marron.png",
                            width: MediaQuery.of(context).size.width * .05,
                          ),
                          Text(
                            "  348 ",
                            style: TextStyle(
                              color: GreyColor,
                              fontSize: MediaQuery.of(context).size.width * .04,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomHeight(
              height: .01,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEEE0FF),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Your Diet Buddy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            CustomHeight(
              height: .02,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "Dieting is always easier and much more effective when you can diet with someone else. Nobady wants to alone. With Diet Achiever you don't have to. ",
                textAlign: TextAlign.justify,
                style: TextStyle(color: Color(0xff707070)),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Introducing Diet Buddies",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF7443),
                    fontSize: MediaQuery.of(context).size.width * .04,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "These are real people who have taken our diet challenge and recorded their journey.",
                textAlign: TextAlign.justify,
                style: TextStyle(color: Color(0xff707070)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "How it Works",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF7443),
                    fontSize: MediaQuery.of(context).size.width * .04,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                      gradient: LinearGradient(
                                          colors: [blueColor, pinkColor])),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 3, 10, 3),
                                    child: Text(
                                      "#1",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                                width: 60,
                                child:
                                    Image.asset('assets/Images/business.png')),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                                width: 180,
                                child: Text(
                                    "Look through the list of Buddy's and select the Buddy you want to take the diet with you")),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                      gradient: LinearGradient(
                                          colors: [blueColor, pinkColor])),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 3, 10, 3),
                                    child: Text(
                                      "#2",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                                width: 60,
                                child:
                                    Image.asset('assets/Images/fitness.png')),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                                width: 180,
                                child: Text(
                                    "Each day, you will receive their daily diet buddy video recapping their experience with the diet for the same day you are on")),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0)),
                                      gradient: LinearGradient(
                                          colors: [blueColor, pinkColor])),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 3, 10, 3),
                                    child: Text(
                                      "#3",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                                width: 60,
                                child: Image.asset(
                                    'assets/Images/miscellaneous.png')),
                            SizedBox(
                              width: 40,
                            ),
                            Container(
                                width: 180,
                                child: Text(
                                    "Look through the list of Buddy's and select the Buddy you want to take the diet with you")),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                text: "Select Your Diet Buddy",
                onPress: () {},
                fontColor: Colors.white,
                bColor: blueColor,
                bHeight: 48,
              ),
            )
          ],
        ),
      ),
    );
  }
}
