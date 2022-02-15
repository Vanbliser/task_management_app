import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/image_icon_stack.dart';
import 'package:task_management_app/app/designs/image_icon_stack_border.dart';

class MycommentRow extends StatelessWidget {
  Color color;
  MycommentRow({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 315,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: Row(children: [
            Transform.rotate(
                angle: -0.785398,
                child: Icon(Icons.link, color: color, size: 20)),
            SizedBox(width: 10),
            Icon(Icons.camera_alt_outlined, color: color, size: 16)
          ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ImageIconStack(
                size: 14,
                images: [
                  ImageIconDesign(assetName: "assets/woman.jpeg"),
                  ImageIconDesign(assetName: "assets/man1.jpg"),
                  ImageIconDesign(assetName: "assets/man2.jpg"),
                ],
              ),
              SizedBox(width: 20),
              ImageiconStackBorder(
                  child: Icon(Icons.add, size: 12, color: Color(0xffC3C3C3))),
            ],
          )
        ],
      ),
    );
  }
}
