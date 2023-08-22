
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/about/about_page.dart';
import '../screens/about/about_page_faq.dart';
import '../screens/home/home.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Color mainTitleColor = Color(0xffC64385);
  Color iconColor = Color(0xffF78A47);
  Color textColor = Color(0xff484848);

  List<String> drawerIcons = [
    "assets/drawericons/1.png",
    "assets/drawericons/2.png",
    "assets/drawericons/3.png",
    "assets/drawericons/4.png",
    "assets/drawericons/5.png",
    "assets/drawericons/6.png",
    "assets/drawericons/7.png",
    "assets/drawericons/1.png",
  ];
  List<String> title = [
    "Experts",
    "Intro",
    "FAQs",
    "Account info",
    "Logout",
    "Favourites",
    "Invite Friends",
    "Dashboard"
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424),);
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.27,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffF1F0F9),
              ),
              child: Center(
                  child: Column(
                children: [
                  SizedBox(height: 15.0),
                  Image.asset(
                    "assets/Icons/dietLogo.png",
                    width: MediaQuery.of(context).size.width * .15,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'DIET ',
                      style: TextStyle(
                        color: Color(0xff66D2A1),
                        fontSize: 18,
                        fontFamily: 'HK Grotesk',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'ACHIEVER',
                            style: TextStyle(
                              color: Color(0xffC64385),
                              fontFamily: 'HK Grotesk',
                            )),
                      ],
                    ),
                  ),
                ],
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "ABOUT",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(25),
                color: const Color(0xccc64385),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
          DListWidget(
            onClick: () {Get.to(About());},
            img: drawerIcons[0],
            title: title[0],
          ),
          DListWidget(
            onClick: () {},
            img: drawerIcons[1],
            title: title[1],
          ),
          DListWidget(
            onClick: () {Get.to(AboutFaq());},
            img: drawerIcons[2],
            title: title[2],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "ACCOUNT",
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontSize: ScreenUtil().setSp(25),
                color: const Color(0xccc64385),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          DListWidget(
            onClick: () {},
            img: drawerIcons[3],
            title: title[3],
          ),
          DListWidget(
            onClick: () {},
            img: drawerIcons[4],
            title: title[4],
          ),
          DListWidget(
            onClick: () {},
            img: drawerIcons[5],
            title: title[5],
          ),
          DListWidget(
            onClick: () {},
            img: drawerIcons[6],
            title: title[6],
          ),
          DListWidget(
            onClick: () {Get.offAll(HomeScreen());},
            img: drawerIcons[7],
            title: title[7],
          ),
        ],
      ),
    );
  }
}

//ignore @immutable
class DListWidget extends StatelessWidget {
  final String img;
  final String title;
  final VoidCallback onClick;

  DListWidget({required this.img, required this.title, required this.onClick});

  final Color iconColor = Color(0xffF78A47);
  final Color textColor = Color(0xff484848);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      splashColor: Colors.black12,
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.0,
              ),
              Container(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    img,
                    color: iconColor,
                    height: 17,
                  )),
              SizedBox(
                width: 10.0,
              ),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(25),
                  color: const Color(0xff484848),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 0.2,
            color: Color(0xff707070),
          ),
        ],
      ),
    );
  }
}
