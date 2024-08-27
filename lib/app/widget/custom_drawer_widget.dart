// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:react_hub/app/widget/side_menu_widget.dart';
import 'package:react_hub/resource/util/responsive.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                  padding: EdgeInsets.all(4.0),
                child: Icon(Icons.menu, color: Colors.grey, size: 25,),
              ),
            ),
          ),
        Expanded(
            child: SideMenuWidget()
        ),
      ],
    );
  }
}
