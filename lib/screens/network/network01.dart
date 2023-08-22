import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/network/followers.dart';
import '../../screens/network/following.dart';
import '../../screens/network/search.dart';


class Network01 extends StatefulWidget {
  static String route = "Network01";

  @override
  _Network01State createState() => _Network01State();
}

class _Network01State extends State<Network01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          mainText: "Network",
          leftIcon: Icons.menu,
          rightIcon: NotificationBell(
            isNotify: true,
          )),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Text(
                      "Followers",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Following",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Search",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [Followers(), Following(), Search()],
            ))
          ],
        ),
      ),
    );
  }
}
