import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final double ?bWidth;
  final double ?bHeight;
  final double ?fontSize;
  final Color ?fontColor;
  final Color ?bColor;
  final BorderRadius ?borderRadius;
  final VoidCallback ?onPress;

  CustomButton(
      {this.text,
      this.bHeight,
      this.bWidth,
      this.fontSize,
      this.fontColor,
      this.bColor,
      this.borderRadius,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: bWidth,
        height: bHeight,
        decoration: BoxDecoration(
          color: bColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Center(
            child: Text(
          text!,
          style: TextStyle(fontSize: fontSize, color: fontColor, fontFamily: 'HK Grotesk',),
        )),
      ),
    );
  }
}
