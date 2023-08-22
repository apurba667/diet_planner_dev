import 'package:flutter/material.dart';

class ReactionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          child: Image(
            image: new AssetImage("assets/Icons/thump.png"),
            width: MediaQuery.of(context).size.width * .1,
            height: MediaQuery.of(context).size.height * .1,
            color: null,
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .01,
        ),
        Text(
          "1125",
          style: TextStyle(
              fontFamily: 'HK Grotesk',
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width * .04),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .05,
        ),
        Container(
          width: 17,
          height: 17,
          child: Image(
            image: new AssetImage("assets/Icons/chat marron.png"),
            width: MediaQuery.of(context).size.width * .1,
            height: MediaQuery.of(context).size.height * .1,
            color: null,
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .01,
        ),
        Text(
          "340",
          style: TextStyle(
              fontFamily: 'HK Grotesk',
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width * .04),
        ),
        Spacer(),
        Container(
          width: 17,
          height: 17,
          child: Image(
            image: new AssetImage("assets/Icons/share.png"),
            width: MediaQuery.of(context).size.width * .1,
            height: MediaQuery.of(context).size.height * .1,
            color: null,
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .05,
        ),
        Container(
          width: 17,
          height: 17,
          child: Image(
            image: new AssetImage("assets/Icons/heart.png"),
            width: MediaQuery.of(context).size.width * .1,
            height: MediaQuery.of(context).size.height * .1,
            color: null,
            fit: BoxFit.scaleDown,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
