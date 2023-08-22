
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/CustomButton.dart';
import 'circuler_progress.dart';
import 'linechart_overviewpage.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding:  EdgeInsets.only(left:ScreenUtil().setWidth(40), right: ScreenUtil().setWidth(40)),
              child: Row(
                children: [
                  SvgPicture.asset(MyImages.btn_back),
                  Spacer(),
                  Text(
                    'TODAY',
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(28),
                        color: const Color(0xff282c37),
                        fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  SvgPicture.asset(MyImages.btn_next),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(20), right:ScreenUtil().setWidth(20), top: ScreenUtil().setHeight(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "START",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff151624),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          "175.7",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(48),
                            color: const Color(0xff282c37),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "May 16,2020",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(22),
                          color: const Color(0xff6d819c),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      CirculerScreen(
                        viewModel: viewModel11,
                      ),
                      Positioned(
                        top: ScreenUtil().setHeight(220),
                        left: ScreenUtil().setWidth(130),
                        child: SvgPicture.asset(
                          MyImages.btn_details,
                          height: ScreenUtil().setHeight(50),
                          width: ScreenUtil().setWidth(200),
                        ),
                      ),
                      Positioned(
                        top: ScreenUtil().setHeight(80),
                        left: ScreenUtil().setWidth(110),
                        child: Column(
                          children: [
                            new Text(
                              "170.3",
                              style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: ScreenUtil().setSp(65),
                                color: const Color(0xff282c37),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "May 16,2020",
                              style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: ScreenUtil().setSp(30),
                                color: const Color(0xff6d819c),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "TARGET",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff151624),
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                          child: Text(
                        "160",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(48),
                          color: Color(0xff282c37),
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "May 16,2020",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(22),
                          color: const Color(0xff6d819c),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade200,
              thickness: 5,
            ),
            SizedBox(
              height: 20,
            ),
            SvgPicture.asset(MyImages.clap),
            SizedBox(
              height: 10,
            ),
            Text(
              "Congratulations !",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(30),
                color: const Color(0xff151624),
                fontWeight: FontWeight.w700,
                height: 1.7857142857142858,
              ),
            ),
            Text(
              "You lost 5.4 pounds",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(22),
                color: const Color(0xff151624),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Avg weekly loss",
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          color: const Color(0xff6d819c),
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "1.4 lb",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(45),
                            color: const Color(0xff282c37),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/Images/curve.png',
                          height: 20,
                          width: 40,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 60,
                  width: 2,
                  color: Colors.grey.shade200,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Left to go",
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          color: const Color(0xff6d819c),
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "10.3 lb",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(45),
                            color: const Color(0xff282c37),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/Images/curve.png',
                          height: 20,
                          width: 40,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic ",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xff6d819c),
                    fontWeight: FontWeight.w600),
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
                            fontSize: MediaQuery.of(context).size.width * 0.04),
                      ),
                      Text(
                        "DCN-C,FDN-R,CCN,CPT",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xffEEE0FF)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 18, 8),
                  child: Row(
                    children: [
                      Text(
                        "Your Progress Chart",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
                      ),
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.0, color: Color(0xff6D5B5B)),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                            child: Text(
                              "Month",
                              style: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: ScreenUtil().setSp(25),
                                color: const Color(0xff484848),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ))
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Your goal 170 lb   ",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(30),
                    color: const Color(0xff999999),
                  ),
                ),
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: LineChart(
                  [
                    new charts.Series<LinearSales, int>(
                      id: 'Sales',
                      colorFn: (_, __) =>
                          charts.ColorUtil.fromDartColor(Color(0xff5856D6)),
                      domainFn: (LinearSales sales, _) => sales.year,
                      measureFn: (LinearSales sales, _) => sales.sales,
                      data: [
                        new LinearSales(7, 180),
                        new LinearSales(9, 178.5),
                        new LinearSales(11, 180),
                        new LinearSales(12, 178),
                        new LinearSales(14, 176),
                        new LinearSales(15, 175.9),
                        new LinearSales(18, 171),
                      ],
                    )
                  ].toList(),
                  animate: false,
                )
                // child: Linechart.withSampleData(),
                ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 00, 20, 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Start",
                        style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(30),
                            color: const Color(0xff6d819c),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "180",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(35),
                          color: const Color(0xff282c37),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Current",
                        style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(30),
                            color: const Color(0xff6d819c),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "177",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(35),
                          color: const Color(0xff282c37),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Goal",
                        style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(30),
                            color: const Color(0xff6d819c),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "170",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(35),
                          color: const Color(0xff282c37),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                linearGradient: LinearGradient(
                  colors: [
                    Color(0xff4d97ff),
                    Color(0xffc64385),
                  ],
                ),
                animation: true,
                lineHeight: 15.0,
                animationDuration: 2500,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.roundAll,
                //progressColor: Color(0xff4D97FF),
                backgroundColor: Colors.grey.shade200,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/Images/turtle.png'),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "27% to goal",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(26),
                    color: const Color(0xff4a4a4a),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              height: 2,
              color: Colors.grey.shade200,
              thickness: 4,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Body Measurement",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(32),
                      color: const Color(0xff151624),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Divider(
                      height: 2,
                      thickness: 1,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Latest update: May 16, 2020',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(30),
                      color: const Color(0xff6d819c),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SvgPicture.asset(MyImages.clap),
            SizedBox(
              height: 10,
            ),
            Text(
              "Congratulations !",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(30),
                color: const Color(0xff151624),
                fontWeight: FontWeight.w700,
                height: 1.7857142857142858,
              ),
            ),
            Text(
              "You lost 5.4 pounds",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(22),
                color: const Color(0xff151624),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Start",
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          color: const Color(0xff6d819c),
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "114 in",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(45),
                            color: const Color(0xff282c37),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/Images/curve.png',
                          height: 20,
                          width: 40,
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.grey.shade200,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Last",
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          color: const Color(0xff6d819c),
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          "109 in",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(45),
                            color: const Color(0xff282c37),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/Images/curve.png',
                          height: 20,
                          width: 40,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: ScreenUtil().setHeight(90),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xff317eee),
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
                    'Update Measurements ',
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
    );
  }
}

class SubscriberLineChart extends StatelessWidget {
  final List<LinearSales> data;

  //final List<LinearSales> selldata;
  final bool animate;

  SubscriberLineChart(
      {@required this.data,
      //@required this.selldata,
      @required this.animate});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<LinearSales, int>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (LinearSales series, _) => series.year,
          measureFn: (LinearSales series, _) => series.sales,
          colorFn: (_, __) => charts.MaterialPalette.black),
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Text(
                "",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Expanded(
                child: charts.LineChart(series,
                    animate: true,
                    defaultRenderer:
                        new charts.LineRendererConfig(includePoints: true)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
