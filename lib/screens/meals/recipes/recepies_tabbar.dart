
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../colors/colors.dart';
import '../../../custom_widgets/CustomButton.dart';
import '../../../custom_widgets/customAppBar.dart';
import '../../../custom_widgets/notification_bell.dart';


class RecipeTabBar extends StatefulWidget {
  static String route = "RecipeTabBar";
  @override
  _RecipeTabBarState createState() => _RecipeTabBarState();
}

class _RecipeTabBarState extends State<RecipeTabBar> {
  String topimage = 'assets/Images/vegitable.png';
  var greycolor = Colors.grey.shade400;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          mainText: "Back",
          leftIcon: Icons.arrow_back,
          rightIcon: NotificationBell(
            isNotify: true,
          ),
        ),
        body: Column(
          children: <Widget>[
            // construct the profile details widget here
            Image.asset(topimage),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Grilled Chicken Salad",
                    style: TextStyle(
                        color: pinkColor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SmoothStarRating(
                    borderColor: greycolor,
                    size: 20,
                    filledIconData: Icons.star,
                    defaultIconData: Icons.star_border,
                    allowHalfRating: false,
                    onRatingChanged: (v) {},
                    starCount: 5,
                    rating: 4,
                    halfFilledIconData: Icons.blur_on,
                    color: yellowColor,
                    spacing: 0.0,
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: greycolor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                        //                 <--- border radius here
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 8, top: 8),
                      child: Text(
                        "S",
                        style: TextStyle(
                            color: pinkColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Starter",
                    style: TextStyle(
                        color: greycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: greycolor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                        //                 <--- border radius here
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 8, top: 8),
                      child: Text(
                        "F",
                        style: TextStyle(
                            color: pinkColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Flex",
                    style: TextStyle(
                        color: greycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: greycolor),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                        //                 <--- border radius here
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 8, top: 8),
                      child: Text(
                        "P",
                        style: TextStyle(
                            color: pinkColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Pure",
                    style: TextStyle(
                        color: greycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.03),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.access_alarms,
                      color: greycolor,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "45 min",
                      style: TextStyle(color: greycolor),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: greycolor,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "4 Servings",
                      style: TextStyle(color: greycolor),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: greycolor,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: greycolor),
                    )
                  ],
                )
              ],
            ),

            // the tab bar with two items
            TabBar(
              isScrollable: true,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  child: Text(
                    "Ingredients",
                  ),
                ),
                Tab(
                  child: Text(
                    "Preparation",
                  ),
                ),
                Tab(
                  child: Text(
                    "Reviews",
                  ),
                ),
              ],
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    child: Center(
                        child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 5),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                                "- Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "- Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "- Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "- Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "- Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
                          ],
                        ),
                      ),
                    )),
                  ),

                  // second tab bar viiew widget
                  Container(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Text(
                          'Preparation',
                        ),
                      ),
                    ),
                  ),

                  //third tab bar
                  Container(
                    child: Center(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          CustomButton(
                              bWidth: MediaQuery.of(context).size.width * 0.5,
                              bHeight:
                                  MediaQuery.of(context).size.height * 0.06,
                              bColor: lightBlueButtonColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              text: "Add Rating And Review",
                              fontSize: 15,
                              fontColor: whiteColor,
                              onPress: () {}),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 8),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    topimage,
                                  ),
                                  radius: 30.0,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tasty & easy recepie",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "2/11/2020",
                                      style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmoothStarRating(
                                  borderColor: greycolor,
                                  size: 20,
                                  filledIconData: Icons.star,
                                  defaultIconData: Icons.star_border,
                                  allowHalfRating: false,
                                  onRatingChanged: (v) {},
                                  starCount: 5,
                                  rating: 5,
                                  halfFilledIconData: Icons.blur_on,
                                  color: orange,
                                  spacing: 0.0,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 5),
                            child: Column(
                              children: [
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    // Icon(Icons.thumb_up_alt_outlined,color: pinkColor,),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Helpfull (200)")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
