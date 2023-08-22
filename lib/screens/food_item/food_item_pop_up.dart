
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodItemPopUp extends StatelessWidget {
  static String route = "fooditempopup";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // centerTitle: true,
        title: Text(
          "Challenge Completion",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'HK Grotesk',
            fontSize: 16,
            color: const Color(0xffffffff),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.0, -1.78),
              end: Alignment(-0.93, 1.46),
              colors: [
                Color(0xffc64385),
                Color(0xff4d97ff),
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.cancel),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/imagesSvg/food.png', height: 191, width: MediaQuery.of(context).size.width, fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Arugla',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 24,
                  color: const Color(0xff151624),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEEE0FF),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'How does It Taste?',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Once a somewhat exotic ingredient, arugula has become mainstream. You can find a bag of pre-washed arugula in most supermarkets these days, as well as heaped into large baskets at the farmers market. Arugula is an easy to grow salad green, making it a good home garden and window box garden choice.',
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'It does not taste anything like spinach, but it actually has a taste compared to iceberg lettuce or romaine. However, all arugula is not alike. Regular arugula can get bitter and unpleasant when mature while wild arugula is stronger, with a more pronounced pepperiness. Its peppery taste adds extra oomph to everything from salads to soup. ',
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEEE0FF),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Best Served With',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Arugula will add a serious kick to your salad by giving it that peppery taste.... Arugula has such a strong flavor, that you do not want to have too much going on. ',
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Many people enjoy arugula in salads, soups, with eggs, in a sandwich, chopped up over grains or even sprinkled over roasted vegetables ',
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEEE0FF),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Fun Fact',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: Text(
                'The inclusion of arugula in a diet will inevitably have a positive effect on any attempts at weight loss. Arugula is a nutrient rich plant packed with powerful vitamins and rich in antioxidants. By satisfying so many nutritional needs, it is an easy way to watch your health and keep your system balanced, without making drastic changes to your diet. ',
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 13,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
