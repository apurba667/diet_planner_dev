import 'package:flutter/material.dart';

class ExercisePage2 extends StatefulWidget {
  static String route = "ExercisePage1";

  @override
  _ExercisePage2State createState() => _ExercisePage2State();
}

class _ExercisePage2State extends State<ExercisePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/Images/yogaimage.png'),
          Text(
            "DUMBBEELL DOUBLE FRONT RAISE",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
