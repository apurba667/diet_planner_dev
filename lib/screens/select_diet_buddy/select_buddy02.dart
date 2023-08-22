
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/center_text_container.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/notification_bell.dart';
import '../home/home.dart';


class SelectBuddy02 extends StatefulWidget {
  @override
  _SelectBuddy02State createState() => _SelectBuddy02State();
}

class _SelectBuddy02State extends State<SelectBuddy02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        leftIcon: Icons.arrow_back,
        mainText: "Your Diet Buddy",
      ),
      body: Column(
        children: [
          CustomHeight(
            height: .07,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Meet Diet Buddy Michale",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .06,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
          CustomHeight(
            height: .05,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .32,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/Images/boy3.jpg"))),
              )
            ],
          ),
          Text(
            "Michale Murray",
            style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * .058),
          ),
          CustomHeight(
            height: .01,
          ),
          Text(
            "Age: 30",
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.width * .032),
          ),
          CustomHeight(
            height: .01,
          ),
          Text("Total Lost Weight: 14lbs",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * .032)),
          Spacer(),
          CenterTextContainer(
            color: Colors.greenAccent,
            text: "Why Choose me?",
          ),
          CustomHeight(
            height: .02,
          ),
          CenterTextContainer(
            color: Colors.greenAccent,
            text: "My Video Testimonial",
          ),
          CustomHeight(
            height: .02,
          ),
          InkWell(
            onTap: (){Get.to(HomeScreen());},
            child: CenterTextContainer(
              color: Colors.blue,
              text: "Choose Josh",
            ),
          ),
          CustomHeight(
            height: .02,
          ),
        ],
      ),
    );
  }
}
