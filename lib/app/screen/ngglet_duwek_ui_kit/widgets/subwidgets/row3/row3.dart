import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/image_icon_stack_border.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class Row3 extends StatelessWidget {
  Color color;
  Row3({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextDesign(data: 'Assigned to', weight: 4, color: color),
          SizedBox(height: 5),
          Row(
            children: [
              ImageiconStackBorder(
                  child: ImageIconDesign(
                      assetName: 'assets/woman.jpeg', size: 20)),
              SizedBox(width: 5),
              ImageiconStackBorder(
                  child:
                      ImageIconDesign(assetName: 'assets/man1.jpg', size: 20)),
              SizedBox(width: 5),
              ImageiconStackBorder(
                  child:
                      ImageIconDesign(assetName: 'assets/man2.jpg', size: 20)),
              SizedBox(width: 5),
              ImageiconStackBorder(
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Icon(Icons.add, size: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
