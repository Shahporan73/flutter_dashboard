// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:react_hub/app/widget/activity_details_card.dart';
import 'package:react_hub/app/widget/bar_graph_card.dart';
import 'package:react_hub/app/widget/header_widget.dart';
import 'package:react_hub/app/widget/line_chart_card.dart';
import 'package:react_hub/app/widget/summary_details_widget.dart';
import 'package:react_hub/app/widget/summary_widget.dart';
import 'package:react_hub/resource/util/responsive.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: SizedBox(
        height: Get.height,
        child: ListView(
         // mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 18),
            const HeaderWidget(),
            const SizedBox(height: 18),
            const ActivityDetailsCard(),
            const SizedBox(height: 18),
            const LineChartCard(),
            const SizedBox(height: 18),
            const BarGraphCard(),
            const SizedBox(height: 18),
            if(Responsive.isTablet(context))
              SummaryWidget()
          ],
        ),
      ),
    );
  }
}
