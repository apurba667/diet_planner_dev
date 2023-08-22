import 'dart:async';
import 'package:flutter/material.dart';

class MyClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Testing(),
    );
  }
}

class Testing extends StatefulWidget {
  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  int secondUnot = 0;
  PageController pageController = new PageController(initialPage: 0);
  PageController pageController2 = new PageController(initialPage: 0);
  PageController minute1 = new PageController(initialPage: 0);
  PageController minute2 = new PageController(initialPage: 0);
  PageController hour1 = new PageController(initialPage: 0);
  PageController hour2 = new PageController(initialPage: 0);

  myclock() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      hour2.animateToPage((DateTime.now().hour / 10).toInt(),
          duration: Duration(seconds: 1), curve: Curves.ease);
      hour1.animateToPage(DateTime.now().hour % 10,
          duration: Duration(seconds: 1), curve: Curves.ease);
      minute2.animateToPage((DateTime.now().minute / 10).toInt(),
          duration: Duration(seconds: 1), curve: Curves.ease);
      minute1.animateToPage(DateTime.now().minute % 10,
          duration: Duration(seconds: 1), curve: Curves.ease);
      pageController2.animateToPage(DateTime.now().second % 10,
          duration: Duration(seconds: 1), curve: Curves.ease);
      pageController.animateToPage((DateTime.now().second / 10).toInt(),
          duration: Duration(seconds: 1), curve: Curves.ease);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myclock();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 5 / 3,
          child: Center(
            child: Container(
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomPageView(controller: hour2),
                  CustomPageView(controller: hour1),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    ":",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 60),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomPageView(controller: minute2),
                  CustomPageView(controller: minute1),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    ":",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 60),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomPageView(controller: pageController),
                  CustomPageView(controller: pageController2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPageView extends StatelessWidget {
  final PageController controller;

  CustomPageView({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 50,
        height: 80,
        child: PageView.builder(
            controller: controller,
            scrollDirection: Axis.vertical,
            itemBuilder: (c, i) {
              return Card(
                color: Colors.black,
                child: Center(
                    child: Text(
                  i.toString(),
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              );
            }),
      ),
    );
  }
}
