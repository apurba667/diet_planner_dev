import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/meal_list.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MealList(
              mealImg: "assets/Images/meal.jpg",
              userImg: "assets/Images/boy.jpg",
              name: "Dr. mandy",
              title: "Grilled Chicken Salad",
              desc: "Praesent feugiat leo id libero imperdiet, eget porta dolor egestas. Cras malesuada lorem lorem, et convallis ex porttitor sed. Vivamus tellus urna !!! :)",
              mainTitle: "Featured Meal",

            ),

            MealList(
              mealImg: "assets/Images/vegitable.png",
              userImg: "assets/Icons/logo2.png",
              name: "DIET ACHIVER",
              mainTitle: "Featured Foods",
            ),
            MealList(
              mealImg: "assets/Images/meal2.jpg",
              userImg: "assets/Images/boy3.jpg",
              name: "Dr. mandy",
              mainTitle: "Featured Challenges",
            ),
            MealList(
              mealImg: "assets/Images/smiley.jpg",
              userImg: "assets/Images/boy.jpg",
              name: "Dr. mandy",
              mainTitle: "Featured Member Meals",
            ),
          ],
        ),
      ),
    );
  }
}
