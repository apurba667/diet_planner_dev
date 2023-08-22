
import 'package:dietplanner/screens/serenity/recent_screen.dart';
import 'package:dietplanner/screens/serenity/video_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../custom_widgets/notification_bell.dart';
import '../about/about_page.dart';
import '../home/home.dart';
import 'audio_screen.dart';
import 'guided_screen.dart';

class SerenityTabBar extends StatefulWidget {
  static String route = "SerenityTabBar";

  @override
  _SerenityTabBarState createState() => _SerenityTabBarState();
}

class _SerenityTabBarState extends State<SerenityTabBar> {
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
      appBar: CustomAppBar(
        mainText: "Serenity",
        rightIcon: NotificationBell(
          isNotify: true,
        ),
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
                        "Recent",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Audio",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Video",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Guided",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(30),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Recent(),
                  //ThisWeek(),
                  Audio(),
                  Video(),
                  Guided(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
