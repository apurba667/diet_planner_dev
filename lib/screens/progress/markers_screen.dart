import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import 'bar_chart.dart';
import 'demo.dart';

class MarkersScreen extends StatefulWidget {
  @override
  _MarkersScreenState createState() => _MarkersScreenState();
}

class _MarkersScreenState extends State<MarkersScreen> {
  final _totalDots = 5;
  double _currentPosition = 0.0;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }
  Widget _buildRow(List<Widget> widgets) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }

  void _updatePosition(double position) {
    setState(() => _currentPosition = _validPosition(position));
  }
  String getCurrentPositionPretty() {
    return (_currentPosition + 1.0).toStringAsPrecision(2);
  }



  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic ",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(30),
                    color: const Color(0xff707070),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20,
                      backgroundImage: AssetImage(MyImages.dummyPerson),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Coach Mandy",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
                        ),
                        Text(
                          "DCN-C,FDN-R,CCN,CPT",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: Text(
                    "Hunger",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.3,

                    viewportFraction: 1,

                    enableInfiniteScroll: false,
                    //enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      int _current = 0;
                      setState(() {
                        _current = index;
                      });
                    },
                    autoPlay: false),
                items: [1, 2, 3, 4, 5].map((e) {
                  return Builder(
                    builder: (ctx) {
                      return Container(
                        height: 60,
                        width: 330,
                        child: MapGenerate(),
                      );
                    },
                  );
                }).toList(),
              ),

              Center(
                child: DotsIndicator(
                    dotsCount: _totalDots,
                    position: _currentPosition,
                  reversed: true,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xffEEE0FF)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 10, 8),
                  child: Text(
                    "Eye Test Tools",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(30),
                    color: const Color(0xff707070),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          border: Border(right: BorderSide(color: blueColor))),
                      child: RichText(
                        text: TextSpan(
                          text: "\"YES\"",
                          style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(25),
                              color: const Color(0xffff7443),
                              height: 1.2727272727272727,
                              fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: " = 1 POINT",
                              style: TextStyle(
                                color: const Color(0xff707070),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "\"NO\"",
                        style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(25),
                            color: const Color(0xffff7443),
                            height: 1.2727272727272727,
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                            text: " = 0 POINT",
                            style: TextStyle(
                              color: const Color(0xff707070),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: SimpleBarChart(
                  [
                    new charts.Series<Values, String>(
                      id: 'eye test',
                      domainFn: (Values sales, _) => sales.week,
                      measureFn: (Values sales, _) => sales.value,
                      colorFn: (_, __) =>
                          charts.ColorUtil.fromDartColor(Color(0xffF38B44)),
                      data: [
                        new Values('Wk1', 3),
                        new Values('Wk2', 2),
                        new Values('Wk3', 3),
                        new Values('Wk4', 1),
                      ],
                    )
                  ].toList(),
                  animate: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.grey.shade100),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(30),
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(80),
                decoration: BoxDecoration(
                  color: const Color(0xffEEE0FF),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Blomarkers',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
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
                        'Cravings',
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
                height: ScreenUtil().setHeight(100),
                decoration: BoxDecoration(
                  color: const Color(0xfff3f3f3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Text(
                        'Sleep',
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
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(30),
                    color: const Color(0xff707070),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20,
                      backgroundImage: AssetImage(MyImages.dummyPerson),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Coach Mandy",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
                        ),
                        Text(
                          "DCN-C,FDN-R,CCN,CPT",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(80),
                decoration: BoxDecoration(
                  color: const Color(0xffEEE0FF),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Eye Test',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        height: 1.5,
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
                        'Do your Clothes fit better',
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3,
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
                        'Do your Clothes fit better',
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 3,
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
                        'Do your Clothes fit better',
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xff77c5b8),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Save & Continue',
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
