// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:react_hub/app/data/healt_details.dart';
import 'package:react_hub/app/widget/custom_card.dart';
import 'package:react_hub/resource/util/responsive.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healtDetails = HealtDetails();
    return GridView.builder(
        itemCount: healtDetails.healtData.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context)?2:4,
            crossAxisSpacing: Responsive.isMobile(context)?12:15,
            mainAxisSpacing: 12.0
        ),
        itemBuilder: (context, index) {
          return CustomCard(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(healtDetails.healtData[index].icon, width: 30, height: 30,),

                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 4.0),
                    child: Text(
                      healtDetails.healtData[index].value,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Text(
                    healtDetails.healtData[index].title,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),

            ),
          );
        });
  }
}
