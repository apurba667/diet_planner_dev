
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/CustomButton.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/progress/linechart_overviewpage.dart';


class EnterWeight extends StatefulWidget {
  static String route = "EnterWeight";
  @override
  _EnterWeightState createState() => _EnterWeightState();
}

class _EnterWeightState extends State<EnterWeight> {
  final _weight = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mainText: 'Enter your weight',
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        leftIcon: Icons.arrow_back,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "May 16,2020",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _weight,
                      decoration:
                          InputDecoration(hintText: "Enter your new weight"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButton(
                      bWidth: MediaQuery.of(context).size.width * 0.4,
                      bHeight: MediaQuery.of(context).size.height * 0.06,
                      bColor: lightBlueButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      text: "Submit",
                      fontSize: 15,
                      fontColor: whiteColor,
                      onPress: () {}),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Your weight will update the chart and entries area below",
                  textAlign: TextAlign.center,
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                blueColor,
                pinkColor,
              ])),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your Progress Chart",
                  style: TextStyle(
                    color: whiteColor,
                  ),
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: LineChart(
                  [
                    new charts.Series<LinearSales, int>(
                      id: 'Sales',
                      colorFn: (_, __) =>
                          charts.MaterialPalette.blue.shadeDefault,
                      domainFn: (LinearSales sales, _) => sales.year,
                      measureFn: (LinearSales sales, _) => sales.sales,
                      data: [
                        new LinearSales(7, 180),
                        new LinearSales(9, 178.5),
                        new LinearSales(11, 180),
                        new LinearSales(12, 178),
                        new LinearSales(14, 176),
                        new LinearSales(15, 175.9),
                        new LinearSales(18, 171),
                      ],
                    )
                  ].toList(),
                  animate: false,
                )
                // child: Linechart.withSampleData(),
                ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Change",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "3.0 lb",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.02),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "Remaining",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "7.0 lb",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.02),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 15.0,
                animationDuration: 2500,
                percent: 0.8,
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.greenAccent,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Entries",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            for (var i = 0; i < 6; i++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        "May 16, 2020",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Chest 39\""),
                          Text("Waist 24\""),
                          Text("Hips 36\""),
                          Text("Total 99\""),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
