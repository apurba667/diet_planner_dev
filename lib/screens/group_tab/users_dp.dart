import 'package:flutter/material.dart';

class UserDP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffC64385),
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
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jessica Doe',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 13,
                  color: const Color(0xff151624),
                  fontWeight: FontWeight.w700,
                  height: 2.3846153846153846,
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  Text(
                    '60 Posts',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 12,
                      color: const Color(0xffa5a5a5),
                      fontWeight: FontWeight.w300,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Last post: 2hrs',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 12,
                      color: const Color(0xffa5a5a5),
                      fontWeight: FontWeight.w300,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
