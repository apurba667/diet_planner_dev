
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../custom_widgets/center_text_container.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/custom_width.dart';
import '../../fonts/fonts.dart';

class Success extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Success> {
  int group = 1;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeight(
                height: .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: ScreenUtil().setHeight(100),
                    width: ScreenUtil().setHeight(100),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/Images/succes.png"))),
                  ),
                ],
              ),
              CustomHeight(
                height: .02,
              ),

              Center(
                child: Text(
                  "Success !",
                  style: TextStyle(
                      fontFamily: Fonts_HK_Grotesk,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(65)),
                ),
              ),

              CustomHeight(
                height: .01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "You have created a new group.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .034),
                  ),
                ],
              ),

              CustomHeight(
                height: .05,
              ),

              Divider(
                color: Colors.grey.withOpacity(0.3),
                thickness: 1,
              ),

              CustomHeight(
                height: .02,
              ),

              Center(
                child: Text(
                  "Group Name:",
                  style: TextStyle(
                      fontFamily: Fonts_HK_Grotesk,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(50)),
                ),
              ),

              CustomHeight(
                height: .005,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Recipe Lovers Delight",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .034),
                  ),
                ],
              ),

              CustomHeight(
                height: .02,
              ),

              Center(
                child: Text(
                  "Group Type:",
                  style: TextStyle(
                      fontFamily: Fonts_HK_Grotesk,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(50)),
                ),
              ),

              CustomHeight(
                height: .005,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Private",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .034),
                  ),
                ],
              ),

              CustomHeight(
                height: .02,
              ),

              Center(
                child: Text(
                  "Group Password:",
                  style: TextStyle(
                      fontFamily: Fonts_HK_Grotesk,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(50)),
                ),
              ),

              CustomHeight(
                height: .005,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Recipes",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .034),
                  ),
                ],
              ),

              CustomHeight(
                height: .04,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "In the future, this group can be accessed from the `Groups` menu under the `My` tab",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .024),
                  ),
                ],
              ),

              CustomHeight(
                height: .02,
              ),

              Divider(
                color: Colors.grey.withOpacity(0.3),
                thickness: 1,
              ),

              CustomHeight(
                height: .02,
              ),

              Center(
                child: Text(
                  "Invite Your Friends",
                  style: TextStyle(
                      fontFamily: Fonts_HK_Grotesk,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(60)),
                ),
              ),

              CustomHeight(
                height: .005,
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "We think groups are always more fun with people you know. So. we make it easy for you to invite family members. friends. coworkers or anyone else you know to join the group. Let everyone know about your group right now",
                      style: TextStyle(
                          fontSize:
                          MediaQuery.of(context).size.width * .033,),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),

              CustomHeight(
                height: .005,
              ),


              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: RaisedButton(
                  onPressed: () {  },
                  color: Color(0xff14ADEE),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/iconsSvg/msg.svg",
                        height: 10,
                        width: 10,
                      ),
                      SizedBox(width: 5,),
                      Text("Invite via Email",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width * .028,
                          color: Colors.white,
                        )
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: RaisedButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {  },
                  color: Color(0xff317EEE),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/iconsSvg/chat.svg",
                        height: 10,
                        width: 10,
                      ),
                      SizedBox(width: 5,),
                      Text("Invite via Text Message",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: MediaQuery.of(context).size.width * .028,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
              ),

              /*Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: CenterTextContainer(
                  text: "Invite via Text Message",
                  color: Color(0xff317EEE),
                ),
              ),*/

              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: RaisedButton(
                  onPressed: () {  },
                  color: Color(0xffC64385),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/iconsSvg/fb.svg",
                        height: 10,
                        width: 10,
                      ),
                      SizedBox(width: 5,),
                      Text("Invite Facebook Friends",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: MediaQuery.of(context).size.width * .028,
                            color: Colors.white,
                          )
                      ),
                    ],
                  ),
                ),
              ),

              /*Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: CenterTextContainer(
                  text: "Invite Facebook Friends",
                  color: Color(0xffC64385),
                ),
              ),
*/
              CustomHeight(
                height: .02,
              ),

              Divider(
                color: Colors.grey.withOpacity(0.3),
                thickness: 1,
              ),


              CustomHeight(
                height: .02,
              ),


              Center(
                child: Text(
                  "Ready To Get Started?",
                  style: TextStyle(
                      fontFamily: Fonts_HK_Grotesk,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(60)),
                ),
              ),

              CustomHeight(
                height: .02,
              ),
              InkWell(
                onTap: (){Get.to(GroupsTabsMy());},
                child: CenterTextContainer(
                  color: Colors.blue,
                  text: "Go To My Group",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
