import 'dart:ui';

import 'package:react_hub/app/model/bar_graph_model.dart';
import 'package:react_hub/app/model/graph_model.dart';

class BarGrapData {
  final data = [
    BarGraphModel(label: "Activity Level", color: Color(0xfffeb95a), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 4),
      GraphModel(x: 5, y: 6),
    ]),
    BarGraphModel(label: "Nutrition", color: Color(0xfff2c8ed), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 9),
      GraphModel(x: 3, y: 6),
      GraphModel(x: 4, y: 6),
      GraphModel(x: 5, y: 7),
    ]),
    BarGraphModel(label: "Hydration level", color: Color(0xff20aef3), graph: [
      GraphModel(x: 0, y: 7),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 4),
      GraphModel(x: 5, y: 10),
    ]),
  ];
  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}