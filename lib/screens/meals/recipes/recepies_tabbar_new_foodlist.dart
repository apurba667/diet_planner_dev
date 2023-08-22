
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom_widgets/customAppBar.dart';
import '../../../custom_widgets/mydrawer.dart';
import '../../../custom_widgets/notification_bell.dart';
import '../../../fonts/fonts.dart';
import '../../../screens/meals/recipes/foodlist.dart';
import '../../../screens/meals/recipes/recepe_video.dart';

class RecipesScreenFoodList extends StatefulWidget {
  static String route = "RecipesScreenFoodList";

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreenFoodList> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      drawer: MyDrawer(),
      appBar: CustomAppBar(
        mainText: "Recipes",
        leftIcon: Icons.menu,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: DefaultTabController(
        initialIndex: 1,
        length: 2,
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
                      "Receipe Videos",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Food List",
                      style: CommonFont.tabBar(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  RecipeVideo(),
                  FoodList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
