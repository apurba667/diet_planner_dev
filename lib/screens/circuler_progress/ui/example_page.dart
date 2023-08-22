
import 'package:flutter/material.dart';

import '../../../progress/src/appearance.dart';


class ExampleViewModel {
  final List<Color> pageColors;
  final CircularSliderAppearance appearance;
  final double min;
  final double max;
  final double value;
  final InnerWidget innerWidget;

  ExampleViewModel(
      {required this.pageColors,
      required this.appearance,
      this.min = 0,
      this.max = 100,
      this.value = 50,
      this.innerWidget});
}

class ExamplePage extends StatelessWidget {
  final ExampleViewModel viewModel;
  const ExamplePage({
    Key key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Container(
        height: 200,
        width: 300,
        child: SleekCircularSlider(
          onChangeStart: (double value) {},
          onChangeEnd: (double value) {},
          innerWidget: viewModel.innerWidget,
          appearance: viewModel.appearance,
          min: viewModel.min,
          max: viewModel.max,
          initialValue: viewModel.value,
        ),
      );

  }
}
