import 'package:flutter/material.dart';
import 'package:react_hub/app/widget/custom_card.dart';

class SummaryDetailsWidget extends StatelessWidget {
  const SummaryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildDetails("Cal","305"),
            buildDetails("Steps","10983"),
            buildDetails("Distance","7km"),
            buildDetails("Sleep","7hr"),
          ],
        )
    );
  }
  Widget buildDetails(String key, String value){
    return Column(
      children: [
        Text(
          key,
          style: TextStyle(fontSize: 11, color: Colors.grey),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14
          ),
        )
      ],
    );
  }
}
