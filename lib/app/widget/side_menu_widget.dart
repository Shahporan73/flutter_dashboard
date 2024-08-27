// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:react_hub/app/data/side_menu_data.dart';
import 'package:react_hub/resource/color_collection/common_colors.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {

  final data = SideMenuData();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 88.0, horizontal: 20.0),
      child: ListView.builder(
        itemCount: data.menu.length,
          itemBuilder: (context, index) {
            return buildMenuEntry(data, index);
          },
      ),
    );
  }
  Widget buildMenuEntry(SideMenuData data, int index){
    final isSelcted = selectedIndex == index;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        color: isSelcted ? selectionColor:Colors.transparent
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });

        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 7.0),
              child: Icon(
                data.menu[index].icon,
                color: isSelcted ? Colors.black:Colors.grey,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                fontSize: 16,
                color: isSelcted ? Colors.black:Colors.grey,
                fontWeight: FontWeight.normal
              ),
            ),

          ],
        ),
      ),
    );
  }
}
