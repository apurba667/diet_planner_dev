
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../progress/src/appearance.dart';

class CirculerViewModel {
  final List<Color> ?pageColors;
  final CircularSliderAppearance? appearance;
  final double ?min;
  final double ?max;
  final double ?value;
  final InnerWidget? innerWidget;

  CirculerViewModel(
      {@required this.pageColors,
      @required this.appearance,
      this.min = 0,
      this.max = 100,
      this.value = 50,
      this.innerWidget});
}

class CirculerScreen extends StatelessWidget {
  final CirculerViewModel viewModel;
  const CirculerScreen({
    Key key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Container(
      height: ScreenUtil().setHeight(280),
      width: ScreenUtil().setHeight(360),
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
