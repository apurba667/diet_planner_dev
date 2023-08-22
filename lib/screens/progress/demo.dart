
import 'package:flutter/material.dart';

class MapGenerate extends StatefulWidget {
  static String route = "MapGenerate";
  @override
  _MapGenerateState createState() => _MapGenerateState();
}

class _MapGenerateState extends State<MapGenerate> {
  static var chartDisplay;
  void initState() {
    setState(() {
      var data = [
        addCharts("Wk1", 1),
        addCharts("Wk2", 2),
        addCharts("Wk3", 4),
        addCharts("Wk4", 3),

      ];
      var series = [
        charts.Series(
          colorFn: (addCharts addCharts, _) =>
              charts.MaterialPalette.red.shadeDefault,
          domainFn: (addCharts addCharts, _) => addCharts.label,
          measureFn: (addCharts addCharts, _) => addCharts.value,
          id: "addCharts",
          data: data,
        ),
      ];
      chartDisplay = charts.BarChart(
        series,
        animationDuration: Duration(milliseconds: 2000),
        // domainAxis: new charts.OrdinalAxisSpec(
        //     renderSpec: new charts.SmallTickRendererSpec(

        //         // Tick and Label styling here.
        //         labelStyle: new charts.TextStyleSpec(
        //             fontSize: 18, // size in Pts.
        //             color: charts.MaterialPalette.black),

        //         // Change the line colors to match text color.
        //         lineStyle: new charts.LineStyleSpec(
        //             color: charts.MaterialPalette.black))),
        // primaryMeasureAxis: new charts.NumericAxisSpec(
        //     renderSpec: new charts.GridlineRendererSpec(

        //         // Tick and Label styling here.
        //         labelStyle: new charts.TextStyleSpec(
        //             fontSize: 18, // size in Pts.
        //             color: charts.MaterialPalette.black),

        //         // Change the line colors to match text color.
        //         lineStyle: new charts.LineStyleSpec(
        //             color: charts.MaterialPalette.black))),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,),
      child: Container(
        child: chartDisplay,
      ),
    );
  }
}

class addCharts {
  final String label;
  final int value;

  addCharts(this.label, this.value);
}
