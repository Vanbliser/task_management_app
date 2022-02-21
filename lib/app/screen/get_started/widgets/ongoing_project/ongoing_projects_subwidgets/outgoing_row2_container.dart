import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class OutgoingRow2Container extends StatelessWidget {
  double width;
  String data;
  Widget icon;
  Color color;
  OutgoingRow2Container(
      {required this.data,
      required this.icon,
      required this.width,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 5),
            TextDesign(
              data: data,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}
