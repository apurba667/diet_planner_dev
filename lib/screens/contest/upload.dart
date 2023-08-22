
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../colors/colors.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  void toggleCheckbox(bool value) {
    if (isChecked1 == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked1 = true;
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked1 = false;
      });
    }
  }

  void toggleCheckbox2(bool value) {
    if (isChecked2 == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked2 = true;
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked2 = false;
      });
    }
  }

  void toggleCheckbox3(bool value) {
    if (isChecked3 == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked3 = true;
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked3 = false;
      });
    }
  }

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
              width: MediaQuery.of(context).size.width,
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
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff707070),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                          child: Text(
                            "View Video Requirements",
                            style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontSize: 14,
                              color: const Color(0xff317eee),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    "I confirmed the following:",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 14,
                      color: const Color(0xff151624),
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                children: [
                  _checkBox("My video is between 1.5 - 3.5 minutes"),
                  _checkBox("My video was filmed in portrait"),
                  _checkBox("My video covers all talking points "),
                ],
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Note- We do not accept late entries. Failure to",
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 13,
                      color: const Color(0xff000000),
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'submit a daily diet buddy video will result in',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 13,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text('disqualification from the contest.',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 13,
                      color: const Color(0xff000000),
                        fontWeight: FontWeight.w600
                    ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, right: 20, left: 20),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Images/upload.png',
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Upload Your Video",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }

  Widget _checkBox(String txt) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Transform.scale(
        scale: 0.9,
        child: Checkbox(
          value: isChecked1,
          onChanged: (value) {
            toggleCheckbox(value!);
          },
          activeColor: Colors.grey,
          checkColor: Colors.white,
          materialTapTargetSize: MaterialTapTargetSize.padded,
          tristate: false,
        ),
      ),
      Text(
        txt,
        style:TextStyle(
          fontFamily: 'HK Grotesk',
          fontSize: 12,
          color: const Color(0xff000000),
          fontWeight: FontWeight.w600,
        ),
      )
    ]);
  }
}
