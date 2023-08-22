
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Container(
      color: Colors.grey.withOpacity(0.1),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _historyInfo("Completed fasts", "18", ""),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    lineLength: 50,
                    lineThickness: 1.0,
                    dashLength: 5.0,
                    dashColor: Colors.grey,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                  ),
                  _historyInfo("Avg.fast length", "16.3", "h"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DottedLine(
                direction: Axis.horizontal,
                lineLength: MediaQuery.of(context).size.width,
                lineThickness: 1.0,
                dashLength: 5.0,
                dashColor: Colors.grey,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _historyInfo("Longest fast", "22", "h"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    lineLength: 50,
                    lineThickness: 1.0,
                    dashLength: 5.0,
                    dashColor: Colors.grey,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 6,
                  ),
                  _historyInfo("Longest streak", "6", ""),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DottedLine(
                direction: Axis.horizontal,
                lineLength: MediaQuery.of(context).size.width,
                lineThickness: 1.0,
                dashLength: 5.0,
                dashColor: Colors.grey,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _historyInfo("Current streak", "2", ""),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    lineLength: 50,
                    lineThickness: 1.0,
                    dashLength: 5.0,
                    dashColor: Colors.grey,
                    dashRadius: 0.0,
                    dashGapLength: 4.0,
                    dashGapColor: Colors.transparent,
                    dashGapRadius: 0.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                  _historyInfo("Weight", "212", "lb"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DottedLine(
                direction: Axis.horizontal,
                lineLength: MediaQuery.of(context).size.width,
                lineThickness: 1.0,
                dashLength: 5.0,
                dashColor: Colors.grey,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Last 7 Days',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 15,
                  color: const Color(0xff3a3a3a),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            _bar(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(80),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Fasting History',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 16,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w500,

                    ),

                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(80),
              decoration: BoxDecoration(
                color: Color(0xffE5E5E5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                    SizedBox(width: 100,),
                    Text(
                      'Goal',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                    SizedBox(width: 100,),
                    Text(
                      'Actual',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(80),
              decoration: BoxDecoration(
                color: Color(0xffF3F3F3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      '7/6/2020',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                    SizedBox(width: 70,),
                    Text(
                      '16 hours',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                    SizedBox(width: 70,),
                    Text(
                      '13 hours',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(80),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      '7/6/2020',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                    SizedBox(width: 70,),
                    Text(
                      '16 hours',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                    SizedBox(width: 70,),
                    Text(
                      '13 hours',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _historyInfo(String title, String vlu, String ext) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'HK Grotesk',
              fontSize: 14,
              color: const Color(0xff585858),
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Text(
                vlu,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 38,
                  color: const Color(0xff585858),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                ext,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bar() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
      child: Container(
        child: Container(
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 50,
                    child: FAProgressBar(
                      verticalDirection: VerticalDirection.up,
                      direction: Axis.vertical,
                      currentValue: 70,
                      displayText: 'h',
                      progressColor: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(MyImages.emo1)
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 50,
                    child: FAProgressBar(
                      verticalDirection: VerticalDirection.up,
                      direction: Axis.vertical,
                      currentValue: 80,
                      displayText: 'h',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(MyImages.emo1)
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 50,
                    child: FAProgressBar(
                      verticalDirection: VerticalDirection.up,
                      direction: Axis.vertical,
                      currentValue: 100,
                      displayText: 'h',
                      progressColor: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    MyImages.emo2,
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 50,
                    child: FAProgressBar(
                      verticalDirection: VerticalDirection.up,
                      direction: Axis.vertical,
                      currentValue: 90,
                      displayText: 'h',
                      progressColor: Colors.orange,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(MyImages.emo1)
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 180,
                    width: 50,
                    child: FAProgressBar(
                      verticalDirection: VerticalDirection.up,
                      direction: Axis.vertical,
                      currentValue: 30,
                      displayText: 'h',
                      progressColor: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(MyImages.emo3)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
