
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/CustomButton.dart';
import 'excercise1.dart';

class CircuitPreviewScreen extends StatefulWidget {
  static String route = "CircuitPreview";

  @override
  _CircuitPreviewScreenState createState() => _CircuitPreviewScreenState();
}

class _CircuitPreviewScreenState extends State<CircuitPreviewScreen> {
  String yogaImage = 'assets/Icons/clap.png';

  List<String> yogaImg = [
    'assets/imagesSvg/cp1.png',
    'assets/imagesSvg/cp2.png',
    'assets/imagesSvg/cp3.png',
    'assets/imagesSvg/cp4.png',
    'assets/imagesSvg/cp5.png',
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(top: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close_rounded,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Color(0xffEEE0FF),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Circuit Preview",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 13,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return _circuitPreviewList(yogaImg[index]);
              },
            ),
          ),
          /* Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext ctxt, int index) {
                return Column(
                  children: [
                    new Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 100,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 0, 10),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40.0))),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          child: Image.asset(
                                            yogaImg[index],
                                            height: 80,
                                            width: 70,
                                          ),
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 3, 0),
                                  child: Container(
                                      width: 230,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Your past ride"),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Text("interval1"),
                                              Spacer(),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.greenAccent,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(
                                                          15.0) //                 <--- border radius here
                                                      ),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Medium Difficulty",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[],
                        )
                      ],
                    ),
                    Divider(
                      height: 1,
                      color: Colors.grey.shade400,
                      thickness: 1,
                    )
                  ],
                );
              },
            ),
          ), */
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: ScreenUtil().setHeight(90),
                  width: ScreenUtil().setWidth(328),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: const Color(0xffd1d1d1),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 2),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: (){Get.to(ExerciseCircuitPlay());},
                  child: Container(
                    height: ScreenUtil().setHeight(90),
                    width: ScreenUtil().setWidth(328),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: const Color(0xff5095fc),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Start',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _circuitPreviewList(image) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Card(
        elevation: 1,
        shadowColor: Color(0xff000000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(7.0),
              child: new Row(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: Image.asset(
                      image,
                      height: 80,
                      width: 70,
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Text(
                          'Lorem ipsum dolor sit',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'HK Grotesk',
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff707070),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Interval 1',
                          style: TextStyle(
                            fontSize: 11.0,
                            fontFamily: 'HK Grotesk',
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff707070),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Medium Difficulty',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: 'HK Grotesk',
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff707070),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  new Padding(
                    padding: new EdgeInsets.only(right: 15),
                    child: SvgPicture.asset(
                      "assets/iconsSvg/arrow.svg",
                      height: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
