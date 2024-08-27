import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:react_hub/app/data/pie_chart_data.dart';
import 'package:react_hub/resource/color_collection/common_colors.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = paiChartData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
         PieChart(
           PieChartData(
             sectionsSpace: 0,
             centerSpaceRadius: 70,
             startDegreeOffset: -90,
             sections: pieChartData.pieChartSelectionData,
           )
         ),
          Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: defaultPadding,),
                  Text(
                    "70%",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white,
                    fontWeight: FontWeight.w600, height: 0.5
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("of 100%")
                ],
              )
          )
        ],
      ),

    );
  }
}
