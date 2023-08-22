
import 'package:dietplanner/progress/src/appearance.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

import '../../colors/hexa_color.dart';
import 'circuler_progress.dart';

/// Example 01

final customWidth01 =
    CustomSliderWidths(trackWidth: 8, progressBarWidth: 8, shadowWidth: 1);
final customColors01 = CustomSliderColors(
    trackColor: HexColor("#E9E9E9"),
    dotColor: Colors.transparent,
    hideShadow: true);

final CircularSliderAppearance appearance01 = CircularSliderAppearance(
  customWidths: customWidth01,
  customColors: customColors01,
  startAngle: 130,
  angleRange: 280,
  size: 200.0,
);
final viewModel11 = CirculerViewModel(
  appearance: appearance01,
  min: 0,
  max: 100,
  value: 60,
);
