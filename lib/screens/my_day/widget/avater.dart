import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Avater extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 0),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/Images/girl.jpg"))),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Coach mandy",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenUtil().setSp(26),
                    color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .001,
              ),
              Text(
                "DCN-C, FDN-P, CCN, CPT",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: ScreenUtil().setSp(20),
                    color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );
  }
}
