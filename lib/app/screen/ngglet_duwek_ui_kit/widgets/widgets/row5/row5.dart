import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/text_design.dart';

import 'widget/add_attachment.dart';
import 'widget/row5-card.dart';

class Row5 extends StatelessWidget {
  Color color;
  Row5({required this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextDesign(data: 'Attachment', weight: 4, color: color),
        SizedBox(height: 5),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row5Card(assetName: 'assets/laptop.png'),
              SizedBox(width: 10),
              Row5Card(assetName: 'assets/lang.png'),
              SizedBox(width: 10),
              Row5Card(assetName: 'assets/thumb.jpg'),
              SizedBox(width: 10),
              AddAttachment(color: color)
            ],
          ),
        )
      ],
    );
  }
}
