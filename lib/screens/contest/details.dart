import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors/colors.dart';


class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset('assets/Images/contest1.png'),
              SizedBox(
                height: 10,
              ),
              Text(
                "Whould you like to get paid to loose weight while",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w700,
                  ),
              ),
              Text(
                "inspiring other people in the process?",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 14,
                  color: const Color(0xff151624),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
                thickness: 1,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Here is your chance!",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 20,
                  color: const Color(0xffc64385),
                  fontWeight: FontWeight.w700,
                  height: 1.25,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "How it works:",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 16,
                      color: const Color(0xff151624),
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 1,
                color: Colors.grey.shade300,
                thickness: 1,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "All you have to is record a 2-3 minute daily video while you are on the program for 21 straight days. In your Diet Buddy videos, you will talk about how your day went, what you ate, what went right, what you struggled with and any other emotions you felt that day. Your videos should be authentic and also entertaining... so don't be afraid to show emotion and to be inspiring. Other people who selected you to be their diet buddy, will be counting on your videos to help support and encourage them while they are on the program",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 15,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "So what we are offering you is chance to get paid to lose weight on Diet Achiever. That's right! You will go through the program and if you record your Diet Buddy videos, then you have a chance to win \$1,000",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 15,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Check the requirements tab to see the full details.        ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 15,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
