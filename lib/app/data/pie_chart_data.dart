import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:react_hub/resource/color_collection/common_colors.dart';

class paiChartData {
  final pieChartSelectionData = [
    PieChartSectionData(
      color: primaryColor,
      value: 25,
      showTitle: false,
      radius: 25
    ),
    PieChartSectionData(
        color: Color(0xff26e5ff),
        value: 20,
        showTitle: false,
        radius: 22
    ),
    PieChartSectionData(
        color: Color(0xffffcf26),
        value: 20,
        showTitle: false,
        radius: 22
    ),
    PieChartSectionData(
        color: Color(0xffee2727),
        value: 15,
        showTitle: false,
        radius: 16
    ),
    PieChartSectionData(
        color: primaryColor.withOpacity(0.1),
        value: 25,
        showTitle: false,
        radius: 13
    ),
  ];
}