import 'package:flutter/material.dart';

class CustomUserProfileIcon extends StatelessWidget {
  final double wid;
  final double height;
  final String url;

  CustomUserProfileIcon({
    required this.height,
    required this.wid,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: wid,
        height: height,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: new NetworkImage(url),
          ),
        ),
      ),
    );
  }
}
