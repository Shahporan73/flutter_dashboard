// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:react_hub/app/widget/scheduled_widget.dart';
import 'package:react_hub/app/widget/summary_details_widget.dart';

import 'custom_pie_chart.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
          CustomPieChart(),
          Text(
            "Summary",
            style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SummaryDetailsWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ScheduledWidget(),
          ),
        ],
      ),
    );
  }
}
