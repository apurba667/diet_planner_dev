
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../fonts/fonts.dart';
import '../../screens/progress/goals.dart';
import '../about/about_page.dart';
import '../home/home.dart';
import 'markers_screen.dart';
import 'overview_screen.dart';
import '../../screens/progress/selfies.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressScreen extends StatefulWidget {
  static String route = "ProgressTabBar";

  @override
  _ProgressScreenState createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
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
        mainText: "Progress",
        leftIcon: Icons.menu,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: DefaultTabController(
        length: 3,
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
                        "Overview",
                        style: CommonFont.tabBar(),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Markers",
                        style: CommonFont.tabBar(),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Selfies",
                        style: CommonFont.tabBar(),
                      ),
                    ),
                    /*Tab(
                    child: Text(
                      "Goal",
                      style: CommonFont.tabBar(),
                    ),
                  ),*/
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                OverviewScreen(),
                MarkersScreen(),
                SelfiesScreen(),
                //GoalPage(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
