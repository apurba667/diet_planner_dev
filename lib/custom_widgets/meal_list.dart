import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../colors/colors.dart';
import '../custom_widgets/custom_width.dart';

class MealList extends StatelessWidget {
  final String mealImg;
  final String name;
  final String? userImg;
  final String? title;
  final String ?mainTitle;
  final String ?desc;

  MealList(
      {required this.name,
      required this.mealImg,
      this.userImg,
      this.desc,
      this.title,
      this.mainTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .35,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(mealImg))),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .07,
                color: Colors.black.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        mainTitle!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * .04,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 0),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .09,
                decoration: BoxDecoration(
                    //color: Colors.deepOrangeAccent,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.contain, image: AssetImage(userImg!))),
              ),
              CustomWidth(
                widths: .02,
              ),
              Text(
                name,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: GreyColor,
                    fontSize: MediaQuery.of(context).size.width * .04),
              ),
              CustomWidth(
                widths: .02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .14,
                height: MediaQuery.of(context).size.height * .028,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        "15 min",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'HK Grotesk',
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Image.asset(
                "assets/Icons/likenew.png",
                width: MediaQuery.of(context).size.width * .04,
              ),
              Text(
                "  1125",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontWeight: FontWeight.w600,
                    color: GreyColor),
              ),
              CustomWidth(
                widths: .03,
              ),
              Image.asset(
                "assets/Icons/chat marron.png",
                width: MediaQuery.of(context).size.width * .04,
              ),
              Text(
                "  348",
                style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontWeight: FontWeight.w600,
                    color: GreyColor),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        title != null && desc != null
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 15,
                          color: Color(0xffC64385),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      desc!,
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontWeight: FontWeight.w600,
                        color: Color(0xb3000000),
                      ),
                    )
                  ],
                ),
              )
            : SizedBox(
                height: 0,
              ),
        Padding(
          padding:
              const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 25),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height * .06,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.grey.withOpacity(0.1)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        // Image.asset("assets/Icons/Mood.png",width: MediaQuery.of(context).size.width*.06,),
                        CustomWidth(
                          widths: .02,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Say something...",
                              hintStyle: TextStyle(
                                fontFamily: 'HK Grotesk',
                                fontSize: 16,
                                color: const Color(0xffadadad),
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              Text(
                "Send",
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: MediaQuery.of(context).size.width * .04,
                  color: const Color(0xffc64385),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

