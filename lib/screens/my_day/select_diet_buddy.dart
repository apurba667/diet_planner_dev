
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../select_diet_buddy/create_account.dart';

class SelectDietBuddy extends StatefulWidget {
  static String route = "SelectDietBuddy";

  @override
  _SelectDietBuddyState createState() => _SelectDietBuddyState();
}

class _SelectDietBuddyState extends State<SelectDietBuddy> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      appBar: CustomAppBar(
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        mainText: "Your Diet Buddy",
        leftIcon: Icons.menu,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Select Your Diet Buddy",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(42),
                    color: const Color(0xff01a1e9),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Select your diet buddy from the featured list below. Once you select your diet buddy, you will not be allowed to change them for the duration of Bootcamp. ",
              style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(30),
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 3,
                    mainAxisSpacing: 10),
                itemBuilder: (c, i) {
                  return InkWell(
                    onTap: (){Get.to(CreateAccount());},
                    child: DietBuddyCard(
                      name: "Katherine Weaver",
                      age: "30",
                      img:
                          "https://img.srgcdn.com/e//NE9ndUFZR2J1VzIxZmVQM1BWVUIuanBn.jpg",
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DietBuddyCard extends StatelessWidget {
  final String ?img;
  final String ?name;
  final String ?age;
  final VoidCallback ?onClick;

  DietBuddyCard({this.img, this.name, this.age, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage("$img")),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0))),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                child: Text(
                  "$name",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: ScreenUtil().setSp(20),
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFF7443),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 1, 0, 2),
                child: Text(
                  "Age  $age",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff707070),
                    fontSize: ScreenUtil().setSp(18),
                    fontFamily: 'HK Grotesk',
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.035,
            decoration: BoxDecoration(
                color: Color(0xff66D2A1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0))),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.black12,
                onTap: onClick,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0)),
                child: Center(
                  child: Text(
                    "View Details",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(18),
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
