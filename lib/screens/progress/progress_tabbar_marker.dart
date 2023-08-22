
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../fonts/fonts.dart';
import '../../screens/progress/goals.dart';
import 'markers_screen.dart';
import 'overview_screen.dart';
import '../../screens/progress/selfies.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressScreenMarker extends StatefulWidget {
  static String route = "ProgressScreenMarker";
  @override
  _ProgressScreenState createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreenMarker> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      drawer: MyDrawer(),
      appBar: CustomAppBar(
        mainText: "Progress",
        leftIcon: Icons.menu,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Column(
          children: [
            Material(
              child: TabBar(
                isScrollable: false,
                labelColor: Color(0xff317EEE),
                unselectedLabelColor: Color(0xffAEAEAE),
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
                  Tab(
                    child: Text(
                      "Goal",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                OverviewScreen(),
                MarkersScreen(),
                SelfiesScreen(),
                GoalPage(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
