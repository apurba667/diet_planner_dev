
import 'package:dietplanner/screens/group_tab/users_dp.dart';
import 'package:dietplanner/screens/group_tab/widget/reaction_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';

class GroupHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                height: 170,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: const AssetImage(MyImages.dummy3),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Public Group',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 16,
                            color: const Color(0xff151624),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '837 Members',
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 11,
                            color: const Color(0xff000000),
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Veggie Lovers',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: 14,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 30, right: 30),
              child: Container(
                height: 36,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color(0xff317eee),
                ),
                child: Center(
                  child: Text(
                    'Join This Group',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 11,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'About',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w700,
                    height: 1.7857142857142858,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Divider(
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 13,
                  color: const Color(0xff151624),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Group Admin',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w700,
                    height: 1.7857142857142858,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Divider(
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
            UserDP(),
            UserDP(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Latest Post',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w700,
                    height: 1.7857142857142858,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Divider(
                color: Colors.grey.withOpacity(0.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/boy.jpg"))),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Jesica Doe",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 14,
                          color: const Color(0xff1d2a38),
                          letterSpacing: 0.26352939605712894,
                          fontWeight: FontWeight.w600,
                          height: 1.2857142857142858,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .002,
                      ),
                      Text(
                        "2 hours ago",
                        style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'HK Grotesk',
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Image(
                    image: new AssetImage("assets/Icons/Post 01.png"),
                    width: MediaQuery.of(context).size.width * .08,
                    height: MediaQuery.of(context).size.height * .08,
                    color: null,
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: Text(
                'The state of Utah in the United States is home to lots of beautiful National Parks...',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 13,
                  color: const Color(0xff415566),
                  letterSpacing: 0.25599998474121094,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .23,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: new AssetImage("assets/Images/geen.png"),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: ReactionWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/boy3.jpg"))),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .01,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * .06,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.withOpacity(0.15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Say something...",
                            hintStyle: TextStyle(
                                fontFamily: 'HK Grotesk', fontSize: 14),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  Text(
                    "Send",
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * .04,
                        color: Colors.pink),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(80),
                decoration: BoxDecoration(color: Colors.white),
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'View All Posts',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(36),
                        color: const Color(0xff317eee),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
