import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? bgColor;
  final Widget? rightIcon;
  final IconData? leftIcon;
  final Color? textColor;
  final String? mainText;
  final double ?iconTextLength;
  final double? textIconLength;

  CustomAppBar(
      {this.bgColor,
      this.rightIcon,
      this.textColor,
      this.mainText,
      this.iconTextLength,
      this.textIconLength,
      this.leftIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Center(child: rightIcon),
        ),
      ],
      title: Text(
        mainText!,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: 'HK Grotesk',
          fontSize: 16,
          color: Color(0xffffffff),
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.0, -1.78),
            end: Alignment(-0.93, 1.46),
            colors: [
              Color(0xffc64385),
              Color(0xff4d97ff),
            ],
            stops: [0.0, 1.0],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);
}
