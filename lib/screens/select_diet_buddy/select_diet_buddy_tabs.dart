import 'package:flutter/material.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/select_diet_buddy/my_day2.dart';


class SelectDietBuddyTab extends StatefulWidget {
  static String route = "SelectDietBuddyTab";

  @override
  _SelectDietBuddyTabState createState() => _SelectDietBuddyTabState();
}

class _SelectDietBuddyTabState extends State<SelectDietBuddyTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        mainText: "Boot Camp",
        leftIcon: Icons.menu,
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Material(
              child: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Text(
                      "My Day",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Challenges",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Feed",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Favorites",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MyDay2(),
                  MyDay2(),
                  MyDay2(),
                  MyDay2(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
