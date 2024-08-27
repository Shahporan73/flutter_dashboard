// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:react_hub/app/widget/custom_drawer_widget.dart';
import 'package:react_hub/app/widget/dashboard_widget.dart';
import 'package:react_hub/app/widget/side_menu_widget.dart';
import 'package:react_hub/app/widget/summary_widget.dart';
import 'package:react_hub/resource/util/responsive.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),

      drawer: !isDesktop? const SizedBox(
        child: CustomDrawerWidget(),
      ):null,

      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if(isDesktop)
            Expanded(
              flex: 2,
                child: SideMenuWidget()
            ),
            Expanded(
                flex: 7,
                child: DashboardWidget()
            ),

            if(isDesktop)
            Expanded(
                flex: 3,
                child: SummaryWidget(),
            )
          ],
        ),
      ),
    );
  }
}
