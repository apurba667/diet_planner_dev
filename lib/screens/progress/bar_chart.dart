import 'dart:math';
import 'package:flutter/material.dart';

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool ?animate;

  SimpleBarChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return new SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  // EXCLUDE_FROM_GALLERY_DOCS_START
  // This section is excluded from being copied to the gallery.
  // It is used for creating random series data to demonstrate animation in
  // the example app only.
  factory SimpleBarChart.withRandomData() {
    return new SimpleBarChart(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<Values, String>> _createRandomData() {
    final random = new Random();

    final data = [
      new Values('2014', random.nextInt(100)),
      new Values('2015', random.nextInt(100)),
      new Values('2016', random.nextInt(100)),
      new Values('2017', random.nextInt(100)),
    ];

    return [
      new charts.Series<Values, String>(
        id: 'hunger',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (Values sales, _) => sales.week,
        measureFn: (Values sales, _) => sales.value,
        data: data,
      )
    ];
  }

  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Values, String>> _createSampleData() {
    final data = [
      new Values('2014', 5),
      new Values('2015', 25),
      new Values('2016', 100),
      new Values('2017', 75),
    ];

    return [
      new charts.Series<Values, String>(
        id: 'hunger',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (Values sales, _) => sales.week,
        measureFn: (Values sales, _) => sales.value,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class Values {
  final String week;
  final int value;

  Values(this.week, this.value);
}
