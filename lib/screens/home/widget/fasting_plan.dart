
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';

class FastingPlan extends StatefulWidget {
  const FastingPlan({Key key}) : super(key: key);

  @override
  _FastingPlanState createState() => _FastingPlanState();
}

class _FastingPlanState extends State<FastingPlan> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Container(
        color: Colors.white,
        width: ScreenUtil().setWidth(856),
        height: ScreenUtil().setHeight(350),
        child: Padding(
          padding: EdgeInsets.only(
            left: ScreenUtil().setWidth(20),
            right: ScreenUtil().setWidth(20),
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: ScreenUtil().setHeight(80),
                    width: ScreenUtil().setWidth(340),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      color: const Color(0xff4d97ff),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Plan',
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(24),
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '18:06 Fasting',
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(20),
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(220),
                    width: ScreenUtil().setWidth(340),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 0.1, color: const Color(0xff707070)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            _circuler("Start", "9:00 PM"),
                            Spacer(),
                            _circuler("Goal", "9:00 PM"),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(40),
                        ),
                        Text(
                          'Remaining (41%)',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(24),
                            color: const Color(0xff3a3a3a),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '07:00:58',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(20),
                            color: const Color(0xff3a3a3a),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              // Stack(
              //   children: [
              //     ExamplePage(
              //       viewModel: viewModel01,
              //     ),
              //     Positioned(
              //       top: ScreenUtil().setHeight(250),
              //       left: ScreenUtil().setWidth(100),
              //       child: Container(
              //         height: ScreenUtil().setHeight(50),
              //         width: ScreenUtil().setWidth(140),
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(100.0),
              //           color: const Color(0xff4d97ff),
              //         ),
              //         child: Center(
              //           child: Text(
              //             'End Fast',
              //             style: TextStyle(
              //               fontFamily: 'HK Grotesk',
              //               fontSize: ScreenUtil().setSp(25),
              //               color: const Color(0xffffffff),
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //         ),
              //       ),
              //     )
              //   ],
              // )
              SvgPicture.asset(
                "assets/iconsSvg/image.svg",
                height: 170,
                width: 170,
              ),
            ],
          ),
        ));
  }

  Widget _circuler(String txt, String time) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: Container(
        height: ScreenUtil().setHeight(70),
        width: ScreenUtil().setWidth(150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23.0),
          color: const Color(0xffffffff),
          border: Border.all(width: 0.5, color: const Color(0xffc64385)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 5),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt,
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(18),
                      color: const Color(0xff3a3a3a),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(18),
                      color: const Color(0xff3a3a3a),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: ScreenUtil().setHeight(50),
                width: ScreenUtil().setWidth(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  color: const Color(0xff4d97ff),
                ),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
