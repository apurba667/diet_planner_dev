
import 'package:dietplanner/screens/groups/public_search_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/groups/community.dart';
import '../../screens/groups/create.dart';
import '../../screens/groups/home.dart';
import '../../screens/groups/members.dart';
import '../../screens/groups/my.dart';
import '../../screens/groups/private.dart';


class GroupsTabsSearchResult extends StatefulWidget {
  static String route = "GroupsTabsSearchResult";

  @override
  _GroupsTabsState createState() => _GroupsTabsState();
}

class _GroupsTabsState extends State<GroupsTabsSearchResult> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      drawer: MyDrawer(),
      appBar: CustomAppBar(
        mainText: "Groups",
        leftIcon: Icons.menu,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Column(
          children: [
            DecoratedTabBar(
              tabBar: TabBar(
                // isScrollable: true,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,

                tabs: [
                  Tab(
                    child: Text(
                      "Public",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Private",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Create",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "My",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  /*Tab(
                    child: Text(
                      "Home",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Community",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Members",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),*/
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
            Expanded(
              child: TabBarView(
                children: [
                  PublicSearch(),
                  Private(),
                  Create(),
                  My(),
                  /*    Home(),
                  Community(),
                  Members()*/
                ],
              ),
            )
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