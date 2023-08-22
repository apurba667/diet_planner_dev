import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../custom_widgets/customAppBar.dart';
import '../../../custom_widgets/notification_bell.dart';
import '../../../screens/meals/my_plates/meals.dart';
import '../../../screens/meals/my_plates/member_meals.dart';
import '../../../screens/meals/my_plates/receipe.dart';

class MealsTabBar extends StatefulWidget {
  static String route = "MealsTabBar";

  @override
  _MealsTabBarState createState() => _MealsTabBarState();
}

class _MealsTabBarState extends State<MealsTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mainText: "Meals",
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
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Text(
                      "My Plates",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Member Meals",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Receipes",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              children: [
                MyPlate(),
                MemberMeals(),
                Recipe(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
