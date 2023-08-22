import 'dart:async';

import 'package:dietplanner/screens/home/widget/fasting_plan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../colors/colors.dart';
import '../../constants/constants.dart';
import '../../custom_widgets/Customcarouslslider.dart';
import '../../custom_widgets/Customuseriprofileicon.dart';
import '../../custom_widgets/customdashboardtile.dart';
import '../../custom_widgets/customgrouptitlecard.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../fonts/fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../challenges/challenges_tabbar.dart';
import '../contest/contest_screen.dart';
import '../fasting/fasting_page.dart';
import '../groups/groups_tabs.dart';
import '../meals/recipes/recepies_tabbar_new.dart';
import '../my_day/boot_camp_screen.dart';
import '../progress/progress_tabbar.dart';
import '../serenity/serinity_tab_screen.dart';

class HomeScreen extends StatefulWidget {
  static String route = "Dashboard";
  static final spaceHeight = 10;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userName = "Mandy";
  String todaysDate = "Friday Jan 17";
  String noofwater = "5";
  String nofmeals = "2";
  String nofshakes = "1";
  String totalworkouts = "3";
  String completedworkouts = "1";
  String initialweight = "185";
  String presentweight = "164";
  String targetweight = "155";
  int communityiconcount = 10;
  var numberofpeopleincomuntiy = 5;
  final List<String> todayscontentimages = [
    'https://www.heart.org/-/media/images/news/2019/april-2019/0429sustainablefoodsystem_sc.jpg',
    'https://www.washwasha.org/upload/photo/news/37/4/900x675o/210.jpg?q=1',
    'https://th.bing.com/th/id/OIP.8x5A6IU16SvlJm_HEU-ixgHaE6?pid=Api&w=1600&h=1060&rs=1',
    'https://th.bing.com/th/id/OIP._tlPVLRTtkZdN0EUCbtd2wHaD2?pid=Api&rs=1',
    'https://th.bing.com/th/id/OIP.tNDdhFkafreXQ9xWHHyt7AHaFH?pid=Api&rs=1',
    'https://images1.fanpop.com/images/photos/2500000/italian-food-italian-food-2543698-1294-883.jpg'
  ];
  String groupnotifications = "4";
  var groupnames = [
    "Amzing Freak Shakes",
    "Salad Lovers",
  ];

  _onLayoutDone(_) {
    //your logic here
    _drawerKey.currentState?.openDrawer();
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback(_onLayoutDone);
    Timer.run(() => Scaffold.of(context).openDrawer());
    super.initState();
  }

  late bool isNotify;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();



  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      backgroundColor: lightGrey,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          showDialog(barrierColor: Colors.black.withOpacity(0.8), context: context, builder: (_) => MyPopUp());
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Image(
            image: new AssetImage("assets/Icons/new.png"),
            width: 65,
            height: 65,
            alignment: Alignment.center,
          ),
        ),
      ),
      drawer: Container(width:ScreenUtil().setWidth(470),child: MyDrawer()),
      drawerEdgeDragWidth: 100,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: Stack(
              children: [
                SvgPicture.asset(
                  MyImages.bellIcon,
                  height: 30,
                  width: 30,
                ),
                Positioned(
                  right: 2,
                  top: 1,
                  child: SizedBox(
                    width: 7,
                    height: 7,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 100,
                      minRadius: 100,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
        title: SvgPicture.asset(
          MyImages.homeLogo,
          height: 20,
          width: 20,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[blueColor, pinkColor],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                color: whiteColor,
                width: MediaQuery.of(context).size.width,
                height: ScreenUtil().setHeight(100),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Hello, " + userName,
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 14,
                          color: GreyColor,
                        ),
                      ),
                      Text(
                        todaysDate,
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 12,
                          color: GreyColor,
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              color: whiteColor,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: SvgPicture.asset(MyImages.calender),
                    ),
                    Spacer(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Boot Camp",
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: 14,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Your Day Begins",
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: 14,
                              color: const Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "O of 6 mods complete",
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: 14,
                              color: Color(0xffc64385),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded,
                        color: Color(0xff000000),
                        size: ScreenUtil().setHeight(80)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FastingPlan(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: ScreenUtil().setHeight(200),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, right: 15.0, left: 20, bottom: 10),
                    child: Text(
                      'My Progress',
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: ScreenUtil().setSp(28),
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          border: Border.all(color: Colors.blue)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 90,
                          animation: true,
                          backgroundColor: whiteColor,
                          lineHeight: 15.0,
                          animationDuration: 2000,
                          percent: ((double.parse(initialweight) -
                                  double.parse(presentweight)) /
                              (double.parse(initialweight) -
                                  double.parse(targetweight))),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: dashboardProgressIndicator,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 20, left: 20),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Start: 185 lbs',
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(22),
                              color: const Color(0xff686868),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Current: 164',
                                style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  fontSize: ScreenUtil().setSp(22),
                                  color: const Color(0xff686868),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                "assets/iconsSvg/khorgos.svg",
                                height: 10,
                                width: 10,
                              ),
                            ],
                          ),
                          Text(
                            'Goal: 155 lbs',
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: ScreenUtil().setSp(22),
                              color: const Color(0xff686868),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: whiteColor,
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(505),
              padding: EdgeInsets.only(top: 15),
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Today\'s Content',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(28),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomSlider(imgList: todayscontentimages)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(250),
              padding: EdgeInsets.only(
                top: 15,
              ),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'My Groups',
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: groupnames.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) =>
                            CustomGroupTitleCard(
                          title: groupnames[index],
                          notificationNo: "5",
                          notificationColor: Colors.blue,
                          fontWeight: fontWeight,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   color: whiteColor,
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height * 0.2,
            //   padding: EdgeInsets.only(top: 15, left: 30),
            //   margin: EdgeInsets.only(top: 10),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Text("Community",
            //           style: TextStyle(
            //               fontSize: fontSize,
            //               color: Colors.black.withOpacity(0.8))),
            //       Padding(
            //         padding: const EdgeInsets.only(top: 10.0),
            //         child: SizedBox(
            //           height: MediaQuery.of(context).size.height * 0.1,
            //           child: ListView.builder(
            //               shrinkWrap: true,
            //               scrollDirection: Axis.horizontal,
            //               itemCount: todayscontentimages.length,
            //               itemBuilder: (BuildContext context, int index) =>
            //                   Padding(
            //                     padding: const EdgeInsets.all(10.0),
            //                     child: CustomUserProfileIcon(
            //                       url: todayscontentimages[index],
            //                       wid: 45,
            //                       height: 45,
            //                     ),
            //                   )),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: 3,
            //   physics: NeverScrollableScrollPhysics(),
            //   itemBuilder: (BuildContext context, int index) => Container(
            //     color: whiteColor,
            //     width: MediaQuery.of(context).size.width,
            //     padding: EdgeInsets.only(top: 15),
            //     margin: EdgeInsets.only(top: 10),
            //     child: CustomDashboardTile(
            //       iconUrl: "https://i.imgur.com/BoN9kdC.png",
            //       iconUsername: "Madge Carson",
            //       lastActive: "2 hours",
            //       pictureDis: "The state of utah united",
            //       picUrl: "https://googleflutter.com/sample_image.jpg",
            //       likeIcon: Image(
            //         image: new AssetImage("assets/Icons/thump.png"),
            //         width: 20,
            //         height: 20,
            //         color: null,
            //         fit: BoxFit.scaleDown,
            //         alignment: Alignment.center,
            //       ),
            //       commentIcon: Image(
            //         image: new AssetImage("assets/Icons/chat marron.png"),
            //         width: 20,
            //         height: 20,
            //         color: null,
            //         fit: BoxFit.scaleDown,
            //         alignment: Alignment.center,
            //       ),
            //       shareIcon: Image(
            //         image: new AssetImage("assets/Icons/share.png"),
            //         width: 20,
            //         height: 20,
            //         color: null,
            //         fit: BoxFit.scaleDown,
            //         alignment: Alignment.center,
            //       ),
            //       loveIcon: Image(
            //         image: new AssetImage("assets/Icons/heart.png"),
            //         width: 20,
            //         height: 20,
            //         color: null,
            //         fit: BoxFit.scaleDown,
            //         alignment: Alignment.center,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class MyPopUp extends StatefulWidget {
  static String route = "popup";

  @override
  _MyPopUpState createState() => _MyPopUpState();
}

class _MyPopUpState extends State<MyPopUp> {
  List<String> gridimgs = [
    'assets/Icons/1.png',
    'assets/Icons/p2.png',
    'assets/Icons/p3.png',
    'assets/Icons/p4.png',
    'assets/Icons/p5.png',
    'assets/Icons/p6.png',
    'assets/Icons/p7.png',
    'assets/Icons/p8.png',
  ];

  List<String> gridText = [
    "Boot Camp",
    "Fasting",
    "Challenges",
    "Progress",
    "Recipes",
    "Serenity",
    "Groups",
    "Contest",
  ];

  String cancel = 'assets/Icons/pcancel.png';

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        // Aligns the container to center

        child: Column(
          children: [
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopUpWidget(
                  title: gridText[0],
                  img: gridimgs[0],
                  onClick: () {Get.to(BootCampScreen());},
                ),
                PopUpWidget(
                  title: gridText[1],
                  img: gridimgs[1],
                  onClick: () {Get.to(FastingPage());},
                ),
                PopUpWidget(
                  title: gridText[2],
                  img: gridimgs[2],
                  onClick: () {Get.to(ChallengesTabBar());},
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PopUpWidget(
                  title: gridText[3],
                  img: gridimgs[3],
                  onClick: () {Get.to(ProgressScreen());},
                ),
                PopUpWidget(
                  title: gridText[4],
                  img: gridimgs[4],
                  onClick: () {Get.to(RecipesScreen());},
                ),
                PopUpWidget(
                  title: gridText[5],
                  img: gridimgs[5],
                  onClick: () {Get.to(SerenityTabBar());},
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PopUpWidget(
                  title: gridText[6],
                  img: gridimgs[6],
                  onClick: () {Get.to(GroupsTabs());},
                ),
                SizedBox(
                  width: 30,
                ),
                PopUpWidget(
                  title: gridText[7],
                  img: gridimgs[7],
                  onClick: () {Get.to(ContestScreen());},
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                cancel,
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class PopUpWidget extends StatelessWidget {
  final VoidCallback ?onClick;
  final String ?title;
  final String ?img;

  PopUpWidget({this.onClick, this.title, this.img});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                    25.0), //                 <--- border radius here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                img,
                width: MediaQuery.of(context).size.width * 0.18,
                height: MediaQuery.of(context).size.width * 0.18,
              ),
            ),
          ),
          Center(
            child: Text(
              title!,
              style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(30),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
