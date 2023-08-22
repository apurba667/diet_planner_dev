
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';

class Audio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Text(
                'These audio tracks are designed to help you bring harmony and positive energy into your body. Swipe through the tracks below to find your selection. Enjoy!',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 14,
                  color: const Color(0xb2000000),
                  height: 1.6666666666666667,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            _title("Sleep"),
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                //shrinkWrap: true,
                itemBuilder: (context, position) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: _thumnails(),
                  );
                },
              ),
            ),
            _title("Inspire"),
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                //shrinkWrap: true,
                itemBuilder: (context, position) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: _thumnails(),
                  );
                },
              ),
            ),
            _title("Meditate"),
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                //shrinkWrap: true,
                itemBuilder: (context, position) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: _thumnails(),
                  );
                },
              ),
            ),
            _title("Nature"),
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                //shrinkWrap: true,
                itemBuilder: (context, position) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: _thumnails(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 0),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'HK Grotesk',
            fontSize: 20,
            color: const Color(0xfc3a3a3a),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _thumnails() {
    return Container(
      height: ScreenUtil().setHeight(320),
      width: ScreenUtil().setWidth(342),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(MyImages.morning2), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 10, bottom: 5),
        child: Column(
          children: [
            Spacer(),
            Text(
              "Deep Relaxing Sleep",
              style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(28),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "00:30",
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(22),
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
