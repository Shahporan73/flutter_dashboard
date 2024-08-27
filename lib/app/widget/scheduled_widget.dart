import 'package:flutter/material.dart';
import 'package:react_hub/app/data/schedul_task_data.dart';
import 'package:react_hub/app/widget/custom_card.dart';
class ScheduledWidget extends StatelessWidget {
  const ScheduledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = SchedulTaskData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Scheduled",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        for(var index=0; index <data.scheduled.length; index++)
          CustomCard(
              color: Colors.black,
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.scheduled[index].title,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        data.scheduled[index].date,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.message)
                ],
              )
            ],
          ))
      ],
    );
  }
}
