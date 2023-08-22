
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class Plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(
                    'For Beginners ( Challenge : Easy) ',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 16,
                      color: const Color(0xff4d4d4d),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                InkWell(
                  //onTap: (){Get.to(Circadian());},
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      //shrinkWrap: true,
                      itemBuilder: (context, position) {
                        return _imageContainer("Circadian", MyImages.morning2);
                      },
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(
                    'Intermediate Level ( Challenge : Moderate)  ',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 16,
                      color: const Color(0xff4d4d4d),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    //shrinkWrap: true,
                    itemBuilder: (context, position) {
                      return _imageContainer("14 Hour Fast", MyImages.morning2);
                    },
                  ),
                ),
                Divider(
                  color: Colors.grey,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(
                    'Advanced Level ( Challenge : Hard) ',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 16,
                      color: const Color(0xff4d4d4d),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    //shrinkWrap: true,
                    itemBuilder: (context, position) {
                      return _imageContainer("17 Hour Fast", MyImages.morning2);
                    },
                  ),
                ),
                Divider(
                  color: Colors.grey,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Text(
                    'Advanced Level ( Challenge : Hard)  ',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 16,
                      color: const Color(0xff4d4d4d),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    //shrinkWrap: true,
                    itemBuilder: (context, position) {
                      return _imageContainer("17 Hour Fast", MyImages.morning2);
                    },
                  ),
                ),
                Divider(
                  color: Colors.grey,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageContainer(String title, String img) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 10,
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: 13,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 10,
            child: Text(
              "12:10",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: 13,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
