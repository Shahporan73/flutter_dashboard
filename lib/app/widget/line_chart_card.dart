// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:react_hub/app/data/line_chart_data.dart';
import 'package:react_hub/app/widget/custom_card.dart';
import 'package:react_hub/resource/color_collection/common_colors.dart';
class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCard(
        child: Column(
          children: [
            Text(
                "Steps Overview",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AspectRatio(
                aspectRatio: 16/6,
              child: LineChart(
                LineChartData(
                  lineTouchData: LineTouchData(
                    handleBuiltInTouches: true
                  ),
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false)
                    ),

                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false)
                    ),

                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return data.bottomTitle[value.toInt()] !=null ?

                              SideTitleWidget(child: Text(
                                data.bottomTitle[value.toInt()].toString(),
                                style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400]
                                ),
                              ), axisSide: meta.axisSide)

                              : const SizedBox();
                        },
                      )
                    ),

                    leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          reservedSize: 40,
                          getTitlesWidget: (value, meta) {
                            return data.leftTitle[value.toInt()] !=null ?

                            SideTitleWidget(child: Text(
                              data.leftTitle[value.toInt()].toString(),
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[400]
                              ),
                            ), axisSide: meta.axisSide)

                                : const SizedBox();
                          },
                        ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      color: selectionColor,
                      barWidth: 2.5,
                      belowBarData: BarAreaData(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter, end: Alignment.bottomCenter,
                            colors: [selectionColor.withOpacity(0.5), Colors.transparent]
                        ),
                        show: true
                      ),
                      dotData: FlDotData(show: false),
                      spots: data.spots
                    )
                  ],
                  minX: 0,
                  maxX: 120,
                  maxY: 105,
                  minY: -5
                ),
              ),
            )
          ],
        )
    );
  }
}
