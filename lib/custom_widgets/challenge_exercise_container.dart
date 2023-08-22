import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengeExerciseContainer extends StatelessWidget {
  final String img;
  final String exerciseName;

  ChallengeExerciseContainer({required this.img, required this.exerciseName});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Column(
      children: [
        Container(
          height: ScreenUtil().setHeight(320),
          width: ScreenUtil().setWidth(342),
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Spacer(),
                Row(
                  children: [
                    Text(
                      exerciseName,
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .013,
        )
      ],
    );
  }
}
