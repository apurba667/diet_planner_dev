import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/customdashboardtile.dart';
import '../../custom_widgets/notification_bell.dart';

class Community02 extends StatefulWidget {
  static String route = "Community02";

  @override
  _Community02State createState() => _Community02State();
}

class _Community02State extends State<Community02> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          rightIcon: NotificationBell(
            isNotify: true,
          ),
          mainText: "Back",
          iconTextLength: MediaQuery.of(context).size.width * .05,
          textIconLength: MediaQuery.of(context).size.width * .62,
          textColor: whiteColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/boy.jpg"))),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Jesica Doe",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .05,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "@interstitialcystitis01",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .04,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "32",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .15,
                  ),
                  Column(
                    children: [
                      Text(
                        "303",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .15,
                  ),
                  Column(
                    children: [
                      Text(
                        "140",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    height: MediaQuery.of(context).size.height * .05,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Follow",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.width * .04,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Recent Posts",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Following",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Followers",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) => Container(
                        color: whiteColor,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(top: 15),
                        margin: EdgeInsets.only(top: 10),
                        child: CustomDashboardTile(
                            iconUrl: "https://i.imgur.com/BoN9kdC.png",
                            iconUsername: "Madge Carson",
                            lastActive: "2 hours",
                            pictureDis: "The state of utah united",
                            picUrl:
                                "https://googleflutter.com/sample_image.jpg",
                            likeIcon: Image(
                              image: new AssetImage("assets/Icons/thump.png"),
                              width: 20,
                              height: 20,
                              color: null,
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            ),
                            commentIcon: Image(
                              image: new AssetImage(
                                  "assets/Icons/chat marron.png"),
                              width: 20,
                              height: 20,
                              color: null,
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            ),
                            shareIcon: Image(
                              image: new AssetImage("assets/Icons/share.png"),
                              width: 20,
                              height: 20,
                              color: null,
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            ),
                            loveIcon: Image(
                              image: new AssetImage("assets/Icons/heart.png"),
                              width: 20,
                              height: 20,
                              color: null,
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            )),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
