
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/mydrawer.dart';
import '../../custom_widgets/notification_bell.dart';
import '../home/home.dart';
import 'contest_tab_bar.dart';

class ContestScreen extends StatelessWidget {
  static String route = "ContestScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
      drawer: Container(width: 270,child: MyDrawer()),
      appBar: CustomAppBar(
        mainText: "Contest",
        leftIcon: Icons.menu,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Current Contests',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 16,
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w700,
                    height: 1.5625,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  height: 1,
                  color: Colors.grey.shade300,
                  thickness: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                    onTap: (){Get.to(ContestTabBar());},
                    child: SvgPicture.asset("assets/iconsSvg/con1.svg", width: MediaQuery.of(context).size.width,)),
                SvgPicture.asset("assets/iconsSvg/con2.svg", width: MediaQuery.of(context).size.width,),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Expired Contests',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 16,
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w700,
                    height: 1.5625,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(
                  height: 1,
                  color: Colors.grey.shade300,
                  thickness: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset("assets/iconsSvg/con3.svg", width: MediaQuery.of(context).size.width,),
              ],
            ),
          ),
        ),

      )
    );
  }
}
