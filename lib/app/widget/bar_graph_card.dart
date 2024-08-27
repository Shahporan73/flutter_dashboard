// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:react_hub/app/data/bar_grap_data.dart';
import 'package:react_hub/app/model/graph_model.dart';
import 'package:react_hub/app/widget/custom_card.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGrapData();
    return GridView.builder(
      itemCount: barGraphData.data.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12,
          childAspectRatio: 5/4
        ),
        itemBuilder: (context, index) {
          return CustomCard(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        barGraphData.data[index].label,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                        child: BarChart(
                          BarChartData(
                            barGroups: _chartGroup(
                                points: barGraphData.data[index].graph,
                                color: barGraphData.data[index].color
                            ),
                            borderData: FlBorderData(border: Border()),
                            gridData: FlGridData(show: false),
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, meta) {
                                    return Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        barGraphData.label[value.toInt()],
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                              topTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),

                            )
                          ),
                        )
                    ),

                  ],
                ),
              )
          );
        },
    );
  }
  List<BarChartGroupData> _chartGroup({required List<GraphModel> points, required Color color}){
    return points.map(
      (point) => BarChartGroupData(x: point.x.toInt(), barRods: [
        BarChartRodData(toY: point.y,
          width: 12,
          color: color.withOpacity(point.y.toInt()>4?1:0.4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(3.0),
            topRight: Radius.circular(3.0)
          )
        )
      ]),
    ).toList();

  }
}
