import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../colors/colors.dart';
import '../../../constants/constants.dart';
import '../../../custom_widgets/CustomButton.dart';

class MyPlate extends StatefulWidget {
  @override
  _MyPlateState createState() => _MyPlateState();
}

class _MyPlateState extends State<MyPlate> {
  List<String> gridImg = [
    'assets/Images/fruite.png',
    'assets/Images/veggie.png',
    'assets/Images/protin.png',
    'assets/Images/flex.png',
    'assets/Images/herb.png',
    'assets/Images/beverage.png',
  ];

  List<String> gridText = [
    "FRUITS",
    "VEGGIES",
    "PROTIN",
    "FLEX",
    "HERBS",
    "BEVEREGES"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                MyImages.myPlateIcon,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "FLEX PLAN",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          color: lightBlueButtonColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "'Keep It Clean'",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: orange,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "CHALLENGE LEVEL",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "MEDIUM",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: orange,
                                      fontWeight: FontWeight.bold),
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
                    CustomButton(
                        bWidth: MediaQuery.of(context).size.width * 0.4,
                        bHeight: MediaQuery.of(context).size.height * 0.06,
                        bColor: lightBlueButtonColor,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        text: "VIDEO",
                        fontSize: 15,
                        fontColor: whiteColor,
                        onPress: () {}),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              decoration:
                  BoxDecoration(color: Colors.orangeAccent.withOpacity(0.3)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "ALLOWED FOOD BY CATEGORY",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.brown),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(6, (index) {
                return Container(
                  decoration: BoxDecoration(
                    color: (index % 2 == 0) ? Colors.grey.shade100 : whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        gridImg[index],
                        width: 48,
                        height: 48,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        gridText[index],
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                      bWidth: MediaQuery.of(context).size.width * 0.4,
                      bHeight: MediaQuery.of(context).size.height * 0.06,
                      bColor: lightBlueButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      text: "Change Plan",
                      fontSize: 15,
                      fontColor:whiteColor,
                      onPress: () {}),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
