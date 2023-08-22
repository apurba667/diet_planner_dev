
import 'package:dietplanner/screens/groups/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/groups/my.dart';
import '../../screens/groups/private.dart';
import '../../screens/groups/public.dart';
import '../home/home.dart';

class GroupsTabsSuccess extends StatefulWidget {
  static String route = "GroupsTabsSuccess";

  @override
  _GroupsTabsState createState() => _GroupsTabsState();
}

class _GroupsTabsState extends State<GroupsTabsSuccess> {
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
        mainText: "Groups",
        leftIcon: Icons.menu,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: DefaultTabController(
        initialIndex: 2,
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
                  Public(),
                  Private(),
                  Success(),
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