import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import '../../../colors/colors.dart';


class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  String sliderImage = 'assets/Images/vegitable.png';
  String sliderText = "Chicken Strawberry Salad";

  var greyColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Featured Lunch Recipes",
                    style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Image.asset(
                            sliderImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              color: Colors.black.withOpacity(0.4),
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 33, right: 33, top: 15, bottom: 5),
                                child: Text(
                                  sliderText,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05),
                                ),
                              ),
                            )),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search Recipes",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade400, width: 32.0),
                          borderRadius: BorderRadius.circular(20.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade400, width: 32.0),
                          borderRadius: BorderRadius.circular(20.0)))),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade200,
              thickness: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Category",
                    style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.grey.shade400,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.done_all,
                        size: 22,
                      ),
                      padding: EdgeInsets.all(12),
                      shape: CircleBorder(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ALL",
                      style: TextStyle(
                          color: pinkColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.grey.shade400,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.done_all,
                        size: 22,
                      ),
                      padding: EdgeInsets.all(12),
                      shape: CircleBorder(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "BREAKFAST",
                      style: TextStyle(
                          color: pinkColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.grey.shade400,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.done_all,
                        size: 22,
                      ),
                      padding: EdgeInsets.all(12),
                      shape: CircleBorder(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "LUNCH",
                      style: TextStyle(
                          color: pinkColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.grey.shade400,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.done_all,
                        size: 22,
                      ),
                      padding: EdgeInsets.all(12),
                      shape: CircleBorder(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "DINNER",
                      style: TextStyle(
                          color: pinkColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade200,
              thickness: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Lunch Recipes",
                    style: TextStyle(
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                  Spacer(),
                  Icon(
                    Icons.filter,
                    color: pinkColor,
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Image.asset(sliderImage),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    sliderText,
                    style: TextStyle(
                      color: pinkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SmoothStarRating(
                        borderColor: greyColor,
                        size: 20,
                        filledIconData: Icons.star,
                        defaultIconData: Icons.star_border,
                        allowHalfRating: false,
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: greyColor),
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
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Starter",
                        style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: greyColor),
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
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Flex",
                        style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: greyColor),
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
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Pure",
                        style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.03),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
