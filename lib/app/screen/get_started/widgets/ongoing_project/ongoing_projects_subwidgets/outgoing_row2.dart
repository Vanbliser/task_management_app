import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/image_icon_stack.dart';
import 'package:task_management_app/app/designs/row_design.dart';

import 'outgoing_row2_container.dart';
class OutgoingRow2 extends StatelessWidget {
  Color color;
  OutgoingRow2({required this.color});
  @override
  Widget build(BuildContext context) {
    return RowDesign(mainAxis: MainAxisAlignment.start, children: [
      OutgoingRow2Container(
          color: color,
          data: '2/10',
          icon: Icons.check_circle_outline_sharp,
          width: 60),
      SizedBox(width: 8),
      OutgoingRow2Container(
          color: color, data: '3', icon: Icons.link_sharp, width: 45),
      SizedBox(width: 8),
      ImageIconStack(
        size: 18,
        images: [
          ImageIconDesign(assetName: "assets/man2.jpg", size: 18),
          ImageIconDesign(assetName: "assets/man1.jpg", size: 18),
          ImageIconDesign(assetName: "assets/woman.jpeg", size: 18),
        ],
      )
    ]);
  }
}
