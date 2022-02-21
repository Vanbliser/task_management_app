import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/row_design.dart';
import 'package:task_management_app/app/designs/text_design.dart';
import 'widgets/due_date.dart';

class Row2 extends StatefulWidget {
  Color color;
  Row2({required this.color});

  @override
  State<Row2> createState() => _Row2State();
}

class _Row2State extends State<Row2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: RowDesign(mainAxis: MainAxisAlignment.start, children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextDesign(data: 'Due Date', color: widget.color, weight: 4),
          SizedBox(height: 5),
          DueDate(color: widget.color)
        ]),
        SizedBox(width: 35),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextDesign(data: 'Attachment', color: widget.color, weight: 4),
          SizedBox(height: 5),
          Row(
            children: [
              Transform.rotate(
                  angle: -0.785398,
                  child: Icon(Icons.link, size: 20, color: widget.color)),
              SizedBox(width: 4),
              TextDesign(data: '3', color: widget.color, weight: 5)
            ],
          )
        ])
      ]),
    );
  }
}
