import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/date_design.dart';
import 'package:task_management_app/app/designs/dot_design.dart';
import 'package:task_management_app/app/designs/row_design.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class DueDate extends StatelessWidget {
  Color color;
  DueDate({required this.color});
  @override
  Widget build(BuildContext context) {
    return RowDesign(children: [
      Icon(Icons.access_time, color: color, size: 18),
      SizedBox(width: 4),
      TextDesign(data: myTime(), color: color, weight: 5),
      SizedBox(width: 4),
      DotDesign(color: color),
      SizedBox(width: 4),
      TextDesign(data: myDate(), color: color, weight: 5)
    ]);
  }
}
