
import 'package:dietplanner/screens/my_day/water_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../fonts/fonts.dart';
import '../../screens/my_day/feed.dart';
import '../../screens/my_day/my_day_tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/my_day/exercise_tab_screen.dart';
import '../about/about_page.dart';
import '../home/home.dart';

class BootCampScreen extends StatefulWidget {
  static String route = "BootCampScreen";

  @override
  _BootCampScreenState createState() => _BootCampScreenState();
}

class _BootCampScreenState extends State<BootCampScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          showDialog(barrierColor: Colors.black.withOpacity(0.8), context: context, builder: (_) => MyPopUp());
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Image(
            image: new AssetImage("assets/Icons/new.png"),
            width: 65,
            height: 65,
            alignment: Alignment.center,
          ),
        ),
      ),
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Boot Camp",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'HK Grotesk',
            fontSize: 16,
            color: Color(0xffffffff),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.0, -1.78),
              end: Alignment(-0.93, 1.46),
              colors: [
                Color(0xffc64385),
                Color(0xff4d97ff),
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        height: ScreenUtil().setHeight(500),
                        width: ScreenUtil().setWidth(700),
                        child: Column(
                          children: [
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              height: ScreenUtil().setHeight(80),
                              width: ScreenUtil().setWidth(700),
                              decoration: BoxDecoration(
                                color: const Color(0xffEEE0FF),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Blomarkers',
                                        style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(30),
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                          height: 1.5,
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(onTap:(){
                                        Get.back();
                                      },child: Icon(Icons.clear))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 20),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no.",
                                style: TextStyle(
                                    fontFamily: 'HK Grotesk',
                                    fontSize: ScreenUtil().setSp(28),
                                    color: const Color(0xff707070),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: ScreenUtil().setHeight(80),
                                      width: ScreenUtil().setWidth(200),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: const Color(0xff66D2A1),
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
                                          'Reset',
                                          style: TextStyle(
                                            fontFamily: 'HK Grotesk',
                                            fontSize: ScreenUtil().setSp(24),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        print("Clicke");
                                      },
                                      child: Container(
                                        height: ScreenUtil().setHeight(80),
                                        width: ScreenUtil().setWidth(300),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                                            'Pause',
                                            style: TextStyle(
                                              fontFamily: 'HK Grotesk',
                                              fontSize: ScreenUtil().setSp(24),
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
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
                  },
                );
              },
              child: SvgPicture.asset(
                MyImages.pause,
                height: 20,
                width: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              height: ScreenUtil().setHeight(80),
                              width: ScreenUtil().setWidth(700),
                              decoration: BoxDecoration(
                                color: const Color(0xffEEE0FF),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Boot Camp Calendar',
                                        style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(30),
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w700,
                                          height: 1.5,
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(onTap:(){
                                        Get.back();
                                      },child: Icon(Icons.clear))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              height: ScreenUtil().setHeight(80),
                              width: ScreenUtil().setWidth(700),
                              decoration: BoxDecoration(
                                color: const Color(0xffEEE0FF),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Day',
                                        style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(25),
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Task',
                                        style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(25),
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              height: ScreenUtil().setHeight(80),
                              width: ScreenUtil().setWidth(700),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Day 1',
                                        style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(25),
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '4 of 6',
                                        style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(25),
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            Container(
                              //width: MediaQuery.of(context).size.width,
                              height: ScreenUtil().setHeight(80),
                              width: ScreenUtil().setWidth(700),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Day 1',
                                        style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(25),
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '4 of 6',
                                        style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(25),
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: SvgPicture.asset(
                MyImages.calenderMenu,
                height: 20,
                width: 20,
              ),
            ),
          )
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Material(
                child: DecoratedTabBar(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              tabBar: TabBar(
                // isScrollable: true,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Text(
                      "My Day",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Exercise",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Water",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Feed",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: TabBarView(
                children: [
                  MyDayTab(),
                  ExerciseTabScreen(),
                  WaterTabScreen(),
                  Feed(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
