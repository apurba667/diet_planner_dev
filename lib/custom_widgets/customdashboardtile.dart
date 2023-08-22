import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../colors/colors.dart';
import '../fonts/fonts.dart';


class CustomDashboardTile extends StatelessWidget {
  final String? iconUrl;
  final String ?iconUsername;
  final String ?lastActive;
  final String ?pictureDis;
  final String ?picUrl;
  final Image likeIcon;
  final Image loveIcon;
  final Image commentIcon;
  final Image shareIcon;

  CustomDashboardTile(
      {this.iconUrl,
      this.iconUsername,
      this.lastActive,
      this.pictureDis,
      this.picUrl,
      required this.likeIcon,
      required this.commentIcon,
      required this.loveIcon,
      required this.shareIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/Images/boy.jpg"))),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(iconUsername!,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: fontWeight)),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, right: 0),
                    child: Text(lastActive!,
                        style: TextStyle(
                            fontSize: 18, color: dashboardTilePinkColor)),
                  ),
                ],
              ),
              Spacer(),
              Image(
                image: new AssetImage("assets/Icons/Post 01.png"),
                width: 40,
                height: 40,
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 30),
          child: Text(pictureDis!,
              style: TextStyle(fontSize: 22, color: Colors.black)),
        ),
        Container(
            padding: const EdgeInsets.only(top: 30.0),
            height: 225,
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                image: new DecorationImage(
                    fit: BoxFit.fill, image: new NetworkImage(picUrl!)))),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(children: <Widget>[
                likeIcon,
                Text("  1258  ",
                    style: TextStyle(color: dashboardTilePinkColor))
              ]),
              Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: Row(children: <Widget>[
                  commentIcon,
                  Text("  1258  ",
                      style: TextStyle(color: dashboardTilePinkColor))
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Row(children: <Widget>[shareIcon]),
              ),
              Row(children: <Widget>[loveIcon])
            ],
          ),
        )
      ],
    );
  }
}
