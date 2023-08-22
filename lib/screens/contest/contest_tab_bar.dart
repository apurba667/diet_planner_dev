
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../fonts/fonts.dart';
import '../../screens/contest/details.dart';
import '../../screens/contest/requirement.dart';
import '../../screens/contest/status.dart';
import '../../screens/contest/upload.dart';
import '../home/home.dart';


class ContestTabBar extends StatefulWidget {
  static String route = "Contest_tabbar";

  @override
  _ContestTabBarState createState() => _ContestTabBarState();
}

class _ContestTabBarState extends State<ContestTabBar> {
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
      appBar: CustomAppBar(
        mainText: "Diet Buddy Contest",
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
              child:  DecoratedTabBar(
                tabBar: TabBar(
                  isScrollable: false,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: Text(
                        "Details",
                        style: CommonFont.tabBar(),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Requirements",
                        style: CommonFont.tabBar(),
                      ),
                    ),

                    Tab(
                      child: Text(
                        "Upload",
                        style: CommonFont.tabBar(),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Status",
                        style: CommonFont.tabBar(),
                      ),
                    ),
                  ],
                ), decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                Detail(),
                Requirements(),
                Upload(),
                Status(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  DecoratedTabBar({required this.tabBar, required this.decoration});

  final TabBar tabBar;
  final BoxDecoration decoration;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Container(decoration: decoration)),
        tabBar,
      ],
    );
  }
}
