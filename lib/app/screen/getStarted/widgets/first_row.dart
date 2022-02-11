import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/Column_design.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/row_design.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RowDesign(l_pad: 20, r_pad: 20, t_pad: 36, children: [
      ColumnDesign(mainAxis: MainAxisAlignment.spaceAround, children: [
        TextDesign(
            data: 'Hi, Lindsley', size: 25, color: Colors.white, weight: 5),
        TextDesign(
            data: 'Keep up the good work!',
            size: 15,
            color: Colors.white,
            weight: 3)
      ]),
      ImageIconDesign(
        assetName: "assets/woman.jpeg",
        size: 50,
      )
    ]);
  }
}
