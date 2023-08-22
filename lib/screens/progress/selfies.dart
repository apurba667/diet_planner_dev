
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';

class SelfiesScreen extends StatefulWidget {
  @override
  _SelfiesScreenState createState() => _SelfiesScreenState();
}

class _SelfiesScreenState extends State<SelfiesScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xffEEE0FF)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Your Weekly selfies',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Wrap(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 1,
                              //spreadRadius: 1,
                              offset: Offset(0, 1))
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff77C5B8),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            width: double.infinity,
                            padding: EdgeInsets.all(7),
                            alignment: Alignment.center,
                            child: Text(
                              "Week #1",
                              style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  color: whiteColor,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.width * 0.48,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                'assets/Images/girlbody.png',
                              )),
                            ),
                          ),
                          Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "195lbs",
                                style: TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.03),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 1,
                                //spreadRadius: 1,
                                offset: Offset(0, 1))
                          ]),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff77C5B8),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            width: double.infinity,
                            padding: EdgeInsets.all(7),
                            alignment: Alignment.center,
                            child: Text(
                              "Week #2",
                              style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  color: whiteColor,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.width * 0.48,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/Images/camera.png'),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Upload Now",
                                  style: TextStyle(
                                      fontFamily: 'HK Grotesk',
                                      fontSize: ScreenUtil().setSp(25),
                                      color: const Color(0xff616161),
                                      height: 1.8,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "-",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 1,
                                //spreadRadius: 1,
                                offset: Offset(0, 1))
                          ]),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff77C5B8),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            width: double.infinity,
                            padding: EdgeInsets.all(7),
                            alignment: Alignment.center,
                            child: Text(
                              "Week #3",
                              style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  color: whiteColor,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.width * 0.48,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Vailiable",
                                    style: TextStyle(
                                        fontFamily: 'HK Grotesk',
                                        fontSize: ScreenUtil().setSp(25),
                                        color: const Color(0xff616161),
                                        height: 1.8,
                                        fontWeight: FontWeight.w600)),
                                Text(
                                  "Week 3",
                                  style: TextStyle(
                                      fontFamily: 'HK Grotesk',
                                      fontSize: ScreenUtil().setSp(25),
                                      color: const Color(0xff616161),
                                      height: 1.8,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "-",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
