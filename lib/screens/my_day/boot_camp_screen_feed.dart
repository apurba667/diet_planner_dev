import 'package:flutter/material.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../fonts/fonts.dart';
import '../../screens/my_day/feed.dart';
import '../../screens/my_day/my_day_tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/my_day/exercise_tab_screen.dart';



class BootCampScreenFeed extends StatefulWidget {
  static String route = "BootCampScreenFeed";

  @override
  _BootCampScreenState createState() => _BootCampScreenState();
}

class _BootCampScreenState extends State<BootCampScreenFeed> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      drawer: MyDrawer(),
      appBar: CustomAppBar(
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        mainText: "Boot Camp",
        leftIcon: Icons.menu,
      ),
      body: DefaultTabController(
             initialIndex: 3,
        length: 4,
        child: Column(
          children: [
            Material(
              child: TabBar(
                isScrollable: false,
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
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MyDayTab(),
                  ExerciseTabScreen(),

                  ExerciseTabScreen(),
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
