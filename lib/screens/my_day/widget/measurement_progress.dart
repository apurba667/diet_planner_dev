import 'package:flutter/material.dart';

class MeasurementProgress extends StatelessWidget {
  final Widget? myWidget1;
  final Widget ?myWidget2;
  final Widget ?myWidget3;
  final Widget ?myWidget4;
  final bool ?isGradient1;
  final bool ?isGradient2;
  final bool ?isGradient3;
  final bool ?isGradient4;

  MeasurementProgress(
      {this.myWidget1,
        this.myWidget2,
        this.myWidget3,
        this.myWidget4,
        this.isGradient1,
        this.isGradient2,
        this.isGradient3, this.isGradient4});

  final double circleHeightWidth = 30.00;
  final Gradient circleGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
    colors: [const Color(0xffC64385), const Color(0xff4D97FF)], // red to yellow
    tileMode: TileMode.repeated, // repeats the gradient over the canvas
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: circleHeightWidth,
          width: circleHeightWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: isGradient1!
                ? Border.all(
                color: Color(
                  0xff707070,
                ),
                width: 1.5)
                : Border.all(color: Colors.transparent),
            gradient: isGradient1!
                ? LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xffC64385), const Color(0xff4D97FF)],
              // red to yellow
              tileMode: TileMode
                  .repeated, // repeats the gradient over the canvas
            )
                : LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xffffffff), const Color(0xffffffff)],
              // red to yellow
              tileMode: TileMode
                  .repeated, // repeats the gradient over the canvas
            ),
          ),
          child: Center(child: myWidget1),
        ),
        Container(
          width: 60,
          height: 1.5,
          color: Color(0xff707070),
        ),
        Container(
          height: circleHeightWidth,
          width: circleHeightWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: isGradient2!
                ? Border.all(
                color: Color(
                  0xff707070,
                ),
                width: 1.5)
                : Border.all(color: Colors.transparent),
            gradient: isGradient2!
                ? LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xffC64385), const Color(0xff4D97FF)],
              // red to yellow
              tileMode: TileMode
                  .repeated, // repeats the gradient over the canvas
            )
                : LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xffffffff), const Color(0xffffffff)],
              // red to yellow
              tileMode: TileMode
                  .repeated, // repeats the gradient over the canvas
            ),
          ),
          child: Center(child: myWidget2),
        ),
        Container(
          width: 60,
          height: 1.5,
          color: Color(0xff707070),
        ),
        Container(
          height: circleHeightWidth,
          width: circleHeightWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: isGradient3!
                ? Border.all(
                color: Color(
                  0xff707070,
                ),
                width: 1.5)
                : Border.all(color: Colors.transparent),
            gradient: isGradient3!
                ? LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xffC64385), const Color(0xff4D97FF)],
              // red to yellow
              tileMode: TileMode
                  .repeated, // repeats the gradient over the canvas
            )
                : LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xffffffff), const Color(0xffffffff)],
              // red to yellow
              tileMode: TileMode
                  .repeated, // repeats the gradient over the canvas
            ),
          ),
          child: Center(child: myWidget3),
        ),
        Container(
          width: 60,
          height: 1.5,
          color: Color(0xff707070),
        ),
        Container(
          height: circleHeightWidth,
          width: circleHeightWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: isGradient4!
                ? Border.all(
                color: Color(
                  0xff707070,
                ),
                width: 1.5)
                : Border.all(color: Colors.transparent),
            gradient: isGradient4!
                ? LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xffC64385), const Color(0xff4D97FF)],
              // red to yellow
              tileMode: TileMode
                  .repeated, // repeats the gradient over the canvas
            )
                : LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // 10% of the width, so there are ten blinds.
              colors: [const Color(0xffffffff), const Color(0xffffffff)],
              // red to yellow
              tileMode: TileMode
                  .repeated, // repeats the gradient over the canvas
            ),
          ),
          child: Center(child: myWidget4),
        ),
      ],
    );
  }
}
