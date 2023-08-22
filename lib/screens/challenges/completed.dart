import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/complete_exercise_container.dart';
import '../../custom_widgets/custom_height.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Completed extends StatefulWidget {
  @override
  _CompletedState createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SvgPicture.asset(MyImages.clap)],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Congratulations !",
                  style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: MediaQuery.of(context).size.width * .045,
                      color: Color(0xffbb4b90),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            CustomHeight(
              height: .007,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You have completed 6 challenges.",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: MediaQuery.of(context).size.width * .040,
                  ),
                )
              ],
            ),
            CustomHeight(
              height: .004,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Feel free to repeat any challenge you like.\nWe will keep track of your results below",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: MediaQuery.of(context).size.width * .035,
                    color: Color(0xffc1478b),
                  ),
                )
              ],
            ),
            CustomHeight(
              height: .02,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade200,
            ),
            CustomHeight(
              height: .02,
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 2,

                childAspectRatio: 0.735,
              children: List.generate(10, (index) {
                return CompleteExercise(
                  img: "assets/Images/challenge6.jpg",
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
