
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/CustomButton.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../screens/weight_measurements/grouped_chart.dart';


class EnterMeasurement extends StatefulWidget {
  static String route = "SelectDietBuddyTab";
  @override
  _EnterMeasurementState createState() => _EnterMeasurementState();
}

class _EnterMeasurementState extends State<EnterMeasurement> {
  TextEditingController inches = TextEditingController();
  TextEditingController waist = TextEditingController();
  TextEditingController hips = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mainText: 'Enter Measurements',
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        leftIcon: Icons.arrow_back,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "May 16,2020",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                ],
              ),
              Row(
                children: [
                  RichText(
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: 'Chest ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04),
                        children: <TextSpan>[
                          TextSpan(
                            text: '(inches)',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ]),
                  ),
                  Expanded(
                    child: TextField(controller: inches, obscureText: false),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RichText(
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: 'Waist ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04),
                        children: <TextSpan>[
                          TextSpan(
                            text: '(inches)',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ]),
                  ),
                  Expanded(
                    child: TextField(controller: waist, obscureText: false),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RichText(
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        text: 'Hips ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04),
                        children: <TextSpan>[
                          TextSpan(
                            text: '(inches)',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03),
                          ),
                        ]),
                  ),
                  Expanded(
                    child: TextField(controller: hips, obscureText: false),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CustomButton(
                      bWidth: MediaQuery.of(context).size.width * 0.4,
                      bHeight: MediaQuery.of(context).size.height * 0.06,
                      bColor: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      text: "Clear",
                      fontSize: 15,
                      fontColor: whiteColor,
                      onPress: () {}),
                  Spacer(),
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
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: MeasurementChart(
                    seriesList:[
                    new charts.Series<OrdinalSales, String>(
                      id: 'Desktop',
                      domainFn: (OrdinalSales sales, _) => sales.year,
                      measureFn: (OrdinalSales sales, _) => sales.sales,
                      data: [
                        new OrdinalSales('2014', 39),
                        new OrdinalSales('2015', 27),
                        new OrdinalSales('2016', 37),
                        new OrdinalSales('2017', 99),
                      ],
                      colorFn: (_, __) =>
                          charts.MaterialPalette.blue.shadeDefault,
                      fillColorFn: (_, __) =>
                          charts.MaterialPalette.blue.shadeDefault.lighter,
                    ),
                    new charts.Series<OrdinalSales, String>(
                      id: 'Tablet',
                      measureFn: (OrdinalSales sales, _) => sales.sales,
                      data: [
                        new OrdinalSales('2014', 36),
                        new OrdinalSales('2015', 24),
                        new OrdinalSales('2016', 31),
                        new OrdinalSales('2017', 87),
                      ],
                      colorFn: (_, __) =>
                          charts.MaterialPalette.red.shadeDefault,
                      domainFn: (OrdinalSales sales, _) => sales.year,
                    ),
                  ].toList(),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Entries",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              for (var i = 0; i < 6; i++)
                Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
