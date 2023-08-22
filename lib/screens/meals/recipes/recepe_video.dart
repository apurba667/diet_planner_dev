import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import '../../../colors/colors.dart';
import '../../../constants/constants.dart';
import '../../../fonts/fonts.dart';

class RecipeVideo extends StatefulWidget {
  @override
  _RecipeVideoState createState() => _RecipeVideoState();
}

class _RecipeVideoState extends State<RecipeVideo> {
  String sliderImage = 'assets/Images/vegitable.png';
  String sliderText = "Chicken Strawberry Salad";

  var greyColor = Color(0xff707070);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                children: [
                  Text(
                    "Featured Lunch Recipes",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(30),
                      color: const Color(0xff707070),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(),
              items: [1, 2, 3, 4, 5].map(
                (i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(sliderImage),
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.black.withOpacity(0.4),

                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    //width: MediaQuery.of(context).size.width,

                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 33,
                                          top: 10,
                                          bottom: 5),
                                      child: Text(
                                        sliderText,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffBDBDBD),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      contentPadding: EdgeInsets.all(0.0),
                      hintText: "Search Recipes",
                      hintStyle: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        color: const Color(0xffb3b3b3),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffBDBDBD), width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffBDBDBD), width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffBDBDBD), width: 1.0),
                          borderRadius: BorderRadius.circular(15.0)))),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Text(
                "Category",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(30),
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w700,

                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SvgPicture.asset(MyImages.all, height: 50,width: 50,),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "ALL",
                      style: CommonFont.recepiesCategory()
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(MyImages.morning, height: 50,width: 50,),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "BREAKFAST",
                      style:CommonFont.recepiesCategory(),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(MyImages.lunch, height: 50,width: 50,),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "LUNCH",
                      style: CommonFont.recepiesCategory(),
                    )
                  ],
                ),
                Column(
                  children: [
                    SvgPicture.asset(MyImages.denner, height: 50,width: 50,),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "DINNER",
                      style: CommonFont.recepiesCategory(),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 15, right: 10),
              child: Row(
                children: [
                  Text(
                    "Lunch Recipes",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(30),
                      color: const Color(0xff707070),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Image.asset('assets/Images/filter.png')
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
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    sliderText,
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(32),
                      color: const Color(0xffc64385),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                      Image.asset(
                        'assets/Icons/chat marron.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "348",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(25),
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Lunch Recipes",
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        color: greyColor,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.04),
                  ),
                  Spacer(),
                  Image.asset('assets/Images/filter.png')
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
                      fontFamily: 'HK Grotesk',
                      color: pinkColor,
                      fontWeight: FontWeight.w700,
                        fontSize: ScreenUtil().setSp(32),
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
                        onRatingChanged: (v) {},
                        starCount: 5,
                        rating: 5,
                        halfFilledIconData: Icons.blur_on,
                        color: yellowColor,
                        spacing: 0.0,
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/Icons/chat marron.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "348",
                        style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: ScreenUtil().setSp(25),
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
     SizedBox(height: 20,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
