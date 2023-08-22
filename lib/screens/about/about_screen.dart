
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../fonts/fonts.dart';

class AboutScreen extends StatefulWidget {
  static String route = "AboutScreen";

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      appBar: CustomAppBar(
        mainText: "About",
        leftIcon: Icons.menu,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Material(
              child: TabBar(
                //isScrollable: true,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Text(
                      "About",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Program",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Mission",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "FAQ",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //About(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
