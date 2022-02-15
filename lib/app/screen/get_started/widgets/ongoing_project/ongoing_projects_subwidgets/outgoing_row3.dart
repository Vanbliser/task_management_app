import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class OutgoingRow3 extends StatefulWidget {
  Color color;
  double value;
  OutgoingRow3({required this.color, required this.value});

  @override
  State<OutgoingRow3> createState() => _OutgoingRow3State();
}

class _OutgoingRow3State extends State<OutgoingRow3> {

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          width: 170,
          height: 3,
          child: LinearProgressIndicator(
              value: (widget.value / 100),
              backgroundColor: Color(0xffffffff),
              color: widget.color)),
      SizedBox(width: 10),
      TextDesign(data: '${widget.value.toInt()}%', color: widget.color)
    ]);
  }
}
