import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors/colors.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/Images/contestimg3.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Countdown To Upload Your Day 15 Diet Buddy Video",
                  style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(26),
                      color: const Color(0xff232323),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(child: SvgPicture.asset("assets/iconsSvg/count.svg")),
            SizedBox(
              height: 25,
            ),
            Divider(
              height: 1,
              color: Colors.grey.shade300,
              thickness: 2,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Contest Upload Status',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 16,
                  color: const Color(0xff151624),
                  fontWeight: FontWeight.w700,
                  height: 1.5625,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 1,
                color: Colors.grey.shade200,
                thickness: 1,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: GridView.builder(
                itemCount: 21,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 3),
                padding: EdgeInsets.all(0),
                itemBuilder: (c, i) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Day ${i + 1}"),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/Images/checkboxgreen.png')
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Image.asset('assets/Images/statusimg1.jpeg', width: MediaQuery.of(context).size.width,),
            SizedBox(
              height: 8,
            ),
            Image.asset('assets/Images/statusimg2.png', width: MediaQuery.of(context).size.width),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                height: 25,
                  width: ScreenUtil().setWidth(150),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      gradient: LinearGradient(colors: [blueColor, pinkColor])),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset('assets/Images/info.png'),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Status",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Text(
                'Your contest eligibility has ended since we did not receive your diet buddy video for Day 20 before the countdown expired.\nEven though you are not longer eligible for this contest we appreciate your efforts and hope you enjoyed participating.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 14,
                  color: const Color(0xff282c37),
                  fontWeight: FontWeight.w600,

                ),

              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
