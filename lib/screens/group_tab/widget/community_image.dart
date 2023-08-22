import 'package:flutter/material.dart';

class CommunityImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        backgroundColor: Color(0xff2051A4),
        radius: 25,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 23,
          child: CircleAvatar(
            radius: 21,
            backgroundImage: AssetImage("assets/Images/girl.jpg"),
          ),
        ),
      ),
    );
  }
}
