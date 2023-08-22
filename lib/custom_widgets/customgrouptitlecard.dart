import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGroupTitleCard extends StatelessWidget {
  final String? title;
  final String ?notificationNo;
  final Color ?notificationColor;
  final FontWeight? fontWeight;

  CustomGroupTitleCard({
    this.title,
    this.notificationNo,
    this.notificationColor,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        AutoSizeText(
                          title!,
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(30),
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                        ),
                        /*Container(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                              child: Center(
                                  child: Text(
                                notificationNo,
                                style: TextStyle(color: Colors.white),
                              )),
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: notificationColor),
                                  borderRadius: BorderRadius.circular(20 / 2),
                                  color: notificationColor)),
                        ),*/
                      ],
                    )
                  ])),
        ),
        Container(
          padding: EdgeInsets.only(top: 15, right: 10),
          width: MediaQuery.of(context).size.width * 0.05,
          child: Icon(Icons.arrow_forward_ios_rounded,
              color: Color(0xff000000), size: ScreenUtil().setHeight(30)),
        )
      ],
    );
  }
}
