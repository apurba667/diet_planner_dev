import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../custom_widgets/customAppBar.dart';
import '../custom_widgets/mydrawer.dart';
import '../custom_widgets/notification_bell.dart';


class BootCampExercise extends StatefulWidget {
  static String route = "BootCampExercise";

  @override
  _BootCampExerciseState createState() => _BootCampExerciseState();
}

class _BootCampExerciseState extends State<BootCampExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: CustomAppBar(
        mainText: "Boot Camp",
        leftIcon: Icons.arrow_back,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no.",
                textAlign: TextAlign.justify,
                style: TextStyle(color: GreyColor),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .006,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 0),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
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
                            fontWeight: FontWeight.w500,
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
                            color: GreyColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .006,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEEE0FF),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Week 2 Exercise Progress",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "0",
                  style: TextStyle(color: Color(0xff14ADEE)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "of",
                  style: TextStyle(color: Color(0xff707070)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "3",
                  style: TextStyle(color: Color(0xff14ADEE)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Completed",
                  style: TextStyle(color: Color(0xff707070)),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/Images/circuit1.png'),
                Image.asset('assets/Images/circuit2.png'),
                Image.asset('assets/Images/circuit3.png'),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Image.asset('assets/Images/video1.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Image.asset('assets/Images/video2.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Image.asset('assets/Images/video3.png'),
          ],
        ),
      ),
    );
  }
}
