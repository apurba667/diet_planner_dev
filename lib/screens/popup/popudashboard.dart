import 'package:flutter/material.dart';

class PopUp extends StatefulWidget {
  static String route = "popup";

  @override
  _PopUpState createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  List<String> gridImg = [
    'assets/Icons/1.png',
    'assets/Icons/p2.png',
    'assets/Icons/p3.png',
    'assets/Icons/p4.png',
    'assets/Icons/p5.png',
    'assets/Icons/p6.png',
    'assets/Icons/p7.png',
    'assets/Icons/p8.png',
  ];

  List<String> gridText = [
    "Boot Camp",
    "Fasting",
    "Challenges",
    "Progress",
    "Recipes",
    "Serenity",
    "Groups",
    "Contest",
  ];

  String cancel = 'assets/Icons/pcancel.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("Press"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => Material(
                type: MaterialType.transparency,
                child: Center(
                  // Aligns the container to center

                  child: Column(
                    children: [
                      Expanded(child: Container()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PopUpWidget(
                            title: gridText[0],
                            img: gridImg[0],
                            onClick: () {},
                          ),
                          PopUpWidget(
                            title: gridText[1],
                            img: gridImg[1],
                            onClick: () {},
                          ),
                          PopUpWidget(
                            title: gridText[2],
                            img: gridImg[2],
                            onClick: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          PopUpWidget(
                            title: gridText[3],
                            img: gridImg[3],
                            onClick: () {},
                          ),
                          PopUpWidget(
                            title: gridText[4],
                            img: gridImg[4],
                            onClick: () {},
                          ),
                          PopUpWidget(
                            title: gridText[5],
                            img: gridImg[5],
                            onClick: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PopUpWidget(
                            title: gridText[6],
                            img: gridImg[6],
                            onClick: () {},
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          PopUpWidget(
                            title: gridText[7],
                            img: gridImg[7],
                            onClick: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            cancel,
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .2,
                          )),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class PopUpWidget extends StatelessWidget {
  final VoidCallback ?onClick;
  final String ?title;
  final String ?img;

  PopUpWidget({this.onClick, this.title, this.img});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(
                        25.0) //                 <--- border radius here
                    ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  img!,
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.15,
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              title!,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
