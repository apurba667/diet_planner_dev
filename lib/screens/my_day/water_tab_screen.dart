
import 'package:dietplanner/screens/my_day/widget/avater.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

import '../../constants/constants.dart';
import '../progress/bar_chart.dart';

class WaterTabScreen extends StatefulWidget {
  @override
  _WaterTabScreenState createState() => _WaterTabScreenState();
}

class _WaterTabScreenState extends State<WaterTabScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.network(mockData["items"][0]["trailer_url"]),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no.",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(28),
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Avater(),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(60),
              decoration: BoxDecoration(
                color: const Color(0xffEEE0FF),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Track your water today',
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Daily tall glasses of water intake',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 16,
                  color: const Color(0xff3a3a3a),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                '50%',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 41,
                  color: const Color(0xff317eee),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 4,
              childAspectRatio: 1.05,
              mainAxisSpacing: 15,
              children: List.generate(8, (index) {
                return SvgPicture.asset(MyImages.glass2);
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                'Almost there!',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 14,
                  color: const Color(0xff3a3a3a),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Text(
                'Just 4 more glass of water',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 16,
                  color: const Color(0xff3a3a3a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
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
                        'Water Weekly Consumption',
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Text(
                'Last 7 Days',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 14,
                  color: const Color(0xff3a3a3a),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: SimpleBarChart(
                [
                  new charts.Series<Values, String>(
                    id: 'eye test',
                    domainFn: (Values sales, _) => sales.week,
                    measureFn: (Values sales, _) => sales.value,
                    colorFn: (_, __) =>
                        charts.ColorUtil.fromDartColor(Color(0xffF38B44)),
                    data: [
                      new Values('SAT', 3),
                      new Values('SUN', 2),
                      new Values('MON', 3),
                      new Values('WED', 1),
                      new Values('THU', 5),
                      new Values('FRI', 4),
                    ],
                  )
                ].toList(),
                animate: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
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
                        'Water Weekly Consumption',
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
            ),
            _videoPreview(MyImages.thumb1, "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut"),
            _videoPreview(MyImages.thumb2, "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut"),
            _videoPreview(MyImages.thumb3, "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut"),
            _videoPreview(MyImages.thumb4, "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut"),
          ],
        ),
      ),
    );
  }
  Widget _videoPreview(String img, String txt, ){
    return Container(
      padding:
      EdgeInsets.only(left: 20, right: 20, top: 10,),
      height: ScreenUtil().setHeight(140),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(img, fit: BoxFit.contain,),
          SizedBox(width: ScreenUtil().setWidth(20),),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: ScreenUtil().setWidth(400),
                child: Text(
                  txt,
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 12,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // SizedBox(
              //   height: ScreenUtil().setHeight(10),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    size: 12,
                    color: Color(0xff77c5b8),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(10),
                  ),
                  Text(
                    'Video by Diet Achiever',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 10,
                      color: const Color(0xff77c5b8),
                    ),

                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
