import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Requirements extends StatefulWidget {
  @override
  _RequirementsState createState() => _RequirementsState();
}

class _RequirementsState extends State<Requirements> {
  List<String> requirementTextList = [
    "1. Starting on Day 7 of the Program, each day you will upload a 2-3 minute video recapping your day, your emotions, what went right and wrong for you, what you ate and anything else you want to share to others to inspire them to continue on their diet\n",
    "2. You will upload a total of 21 daily videos plus a 2-3 minute video introduction, a 2-3 minute video testimonial, and a 2-3 minute final video recapping your experience on the program. In total there will be 24 total short video submissions.\n",
    "3. Your daily videos must be submitted no later than 24 hours once your day begins. If you miss the deadline to enter a video you will no longer be elligible for the contest. There are no exceptions to this!\n",
    "4. Once you successfully upload the 21 daily videos on time, you will be given exactly 3 days to record the intro video, your testimonial and your ending recap video. Failure to submit these videos on time will result in disqualification from the contest.\n",
    "5. All videos must be filmed in Portrait mode.\n",
    "6. You must agree to our Terms & Conditions before entering the contest.\n",
    "7. The contest ends on 12/21/20. You will be notified by email if you are chosen. All decisions are final.\n",
    "8. The winner(s) will be displayed once the contest is over, which can be accessed in the expired contests section. "
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Diet Buddy Contest Requirements",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 16,
                  color: const Color(0xff151624),
                  fontWeight: FontWeight.w700,
                  height: 1.5625,
                ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade300,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: new ListView.builder(
                  // physics: NeverScrollableScrollPhysics (),
                  itemCount: requirementTextList.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return new Text(requirementTextList[index], style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 15,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w600
                    ),);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
