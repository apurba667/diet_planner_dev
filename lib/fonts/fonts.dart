library constants1;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double fontSize = 18;
const FontWeight fontWeight = FontWeight.w600;
const String Fonts_HK_Grotesk = "HK Grotesk";

class CommonFont {
  static TextStyle tabBar() {
    return TextStyle(
      fontFamily: 'HK Grotesk',
      fontWeight: FontWeight.w600,
      fontSize: ScreenUtil().setSp(23),
    );
  }
  static TextStyle recepiesCategory() {
    return TextStyle(
      fontFamily: 'HK Grotesk',
      fontSize: ScreenUtil().setSp(20),
      color: const Color(0xffc64385),
      fontWeight: FontWeight.w600,
    );
  }
}
