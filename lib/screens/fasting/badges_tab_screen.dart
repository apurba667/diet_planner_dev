
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/constants.dart';

class Badges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Badge of honours',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Image.asset(MyImages.badge1),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                'Strong Start',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 13,
                  color: const Color(0xab000000),
                  fontWeight: FontWeight.w700,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Text(
                'Milestones',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),

              ),
            ),

            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 4,
              childAspectRatio: 0.9,
              mainAxisSpacing: 10,
              children: List.generate(8, (index) {
                return       Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    children: [
                      Image.asset(index== 0 || index == 1 || index== 2 || index == 3 ? MyImages.badge2 : MyImages.badge1),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        '1 Start',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 13,
                          color: const Color(0xab000000),
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Text(
                'Streaks',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,

                ),
              ),
            ),

            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 4,
              childAspectRatio: 0.9,
              mainAxisSpacing: 10,
              children: List.generate(8, (index) {
                return       Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    children: [
                      Image.asset(index== 0 || index == 1 || index== 2 || index == 3 ? MyImages.badge1 : MyImages.badge2),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        '1 Start',
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 13,
                          color: const Color(0xab000000),
                          fontWeight: FontWeight.w700,

                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),


          ],
        ),
      ),
    );
  }
}
