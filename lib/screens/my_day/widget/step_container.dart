import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StepConainer extends StatelessWidget {
  final String ?point;
  final String ?img;
  final String ?txt;

  const StepConainer({Key key, this.point, this.img, this.txt})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: ScreenUtil().setHeight(250),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.grey.shade200),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0), //                 <--- border radius here
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Container(
                  height: ScreenUtil().setHeight(60),
                  width: ScreenUtil().setWidth(100),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                            25.0), //                 <--- border radius here
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // 10% of the width, so there are ten blinds.
                        colors: [
                          const Color(0xffC64385),
                          const Color(0xff4D97FF)
                        ],
                        // red to yellow
                        tileMode: TileMode
                            .repeated, // repeats the gradient over the canvas
                      )),
                  child: Center(
                    child: Text(
                      point!,
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(img!),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: ScreenUtil().setHeight(200),
                  width: ScreenUtil().setWidth(360),
                  child: Text(
                    txt!,
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        color: Color(0xff6d819c),
                        fontSize: ScreenUtil().setHeight(28)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
