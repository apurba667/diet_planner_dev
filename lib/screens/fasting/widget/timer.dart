
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/constants.dart';
import '../../circuler_progress/ui/example_page.dart';
import '../../circuler_progress/ui/home_page.dart';


class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        //padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(80),
                      width: ScreenUtil().setWidth(320),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        gradient: LinearGradient(
                          begin: Alignment(1.0, -0.73),
                          end: Alignment(-0.97, 0.27),
                          colors: [
                            const Color(0xffc64385),
                            const Color(0xff4d97ff)
                          ],
                          stops: [0.0, 1.0],
                        ),
                      ),
                      child: Center(
                        child: Text('Fasting Plan : 14:10',
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(27),
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: ScreenUtil().setHeight(80),
                      width: ScreenUtil().setWidth(280),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        gradient: LinearGradient(
                          begin: Alignment(1.0, -0.73),
                          end: Alignment(-0.97, 0.27),
                          colors: [
                            const Color(0xffc64385),
                            const Color(0xff4d97ff)
                          ],
                          stops: [0.0, 1.0],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Adjust',
                              style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: ScreenUtil().setSp(27),
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600,
                              )),
                          SizedBox(
                            width: ScreenUtil().setWidth(15),
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: ScreenUtil().setHeight(35),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  ExamplePage(
                    viewModel: viewModel01,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*0.175,
                    left: MediaQuery.of(context).size.width*0.25,
                    child: Container(
                      height: ScreenUtil().setHeight(80),
                      width: ScreenUtil().setWidth(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: const Color(0xff4d97ff),
                      ),
                      child: Center(
                        child: Text(
                          'Start New Fast',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(22),
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*0.075,
                    left: MediaQuery.of(context).size.width*0.22,
                    child: Column(
                      children: [
                        Text(
                          'Next Fast Begins',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(26),
                            color: const Color(0xff6d819c),
                            fontWeight: FontWeight.w600,
                          ),

                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '04:59:01',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(55),
                            color: const Color(0xff282c37),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  width: ScreenUtil().setWidth(700),
                  height: ScreenUtil().setHeight(320),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                    color: const Color(0xfff3f3f3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        SvgPicture.asset(MyImages.clap),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Congratulations !',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(30),
                            color: const Color(0xff151624),
                            fontWeight: FontWeight.w700,
                            height: 1.7857142857142858,
                          ),
                        ),
                        Text(
                          'You just completed your first fast. Now is the time to ensure you eat right to maximize your weight loss while giving your body the nutrients it needs.',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(22),
                            color: const Color(0xff151624),
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(80),
                decoration: BoxDecoration(
                  color: const Color(0xffffe2d0),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Please Tell Us how you feel?',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(24),
                        color: const Color(0xb3000000),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(100),
                decoration: BoxDecoration(
                  color: const Color(0xfff3f3f3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Text(
                        'Energy',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff141414),
                          height: 1.2857142857142858,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        MyImages.confusedYellow,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.normal,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.angry,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.kiss,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.love,
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(100),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Text(
                        'Hunger',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff141414),
                          height: 1.2857142857142858,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        MyImages.angry,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.normal,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.angry,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.kissYellow,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.love,
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(100),
                decoration: BoxDecoration(
                  color: const Color(0xfff3f3f3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Text(
                        'Brain Fog',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff141414),
                          height: 1.2857142857142858,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        MyImages.angry,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.normalYellow,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.angry,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.kiss,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.love,
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(100),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Text(
                        'Mood',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff141414),
                          height: 1.2857142857142858,
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        MyImages.angry,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.normal,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.angry,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.kiss,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        MyImages.loveYellow,
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(80),
                decoration: BoxDecoration(
                  color: const Color(0xffeee0ff),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        'Featured Foods',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(24),
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        MyImages.i_icon,
                        height: 20,
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  'Supercharge your weight loss with healthy food and beverages. Here are some ideas below. You can see more in the Food List section inside of my Day or Visit the Recipe section for meal ideas.',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(26),
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              _featureImage(MyImages.dummy2, "Features Fruit", "Goji Berry"),
              SizedBox(
                height: 5,
              ),
              _featureImage(MyImages.dummy3, "Features Vegetable", "Turnip"),
              SizedBox(
                height: 5,
              ),
              _featureImage(MyImages.dummy4, "Features Herb", "Mint"),
              SizedBox(
                height: 5,
              ),
              _featureImage(MyImages.dummy2, "Features Fruit", "Goji Berry"),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _featureImage(String image, String feture, String name) {
    return Stack(
      children: [
        Container(
          height: ScreenUtil().setHeight(330),
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            image, fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: ScreenUtil().setHeight(220),
          left: ScreenUtil().setWidth(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                feture,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(26),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(38),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
