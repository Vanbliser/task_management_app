import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/date_design.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class OutgoingRow1 extends StatelessWidget {
  String title;
  Widget icon;
  Color iconColor, iconBackground;
  OutgoingRow1(
      {required this.title,
      required this.icon,
      required this.iconColor,
      required this.iconBackground});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          width: 35,
          height: 35,
          decoration:
              BoxDecoration(color: iconBackground, shape: BoxShape.circle),
          child: Center(child: icon)),
      SizedBox(width: 10),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextDesign(data: title, size: 16, weight: 5, color: iconColor),
        SizedBox(height: 2),
        Row(children: [
          Icon(Icons.access_time, size: 16, color: iconColor),
          SizedBox(width: 8),
          TextDesign(data: myDate(), weight: 3, color: iconColor)
        ])
      ])
    ]);
  }
}
