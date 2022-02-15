import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/Column_design.dart';
import 'package:task_management_app/app/designs/row_design.dart';
import 'package:task_management_app/app/designs/text_design.dart';

import 'recent_task_subwidget/recent_task_widget.dart';

class RecentTask extends StatefulWidget {
  void Function() onTap1;
  void Function(bool? value) onChanged1;
  Color color1;
  bool state1;
  bool state2;
  bool state3;
  void Function() onTap2;
  void Function(bool? value) onChanged2;
  Color color2;
  void Function() onTap3;
  void Function(bool? value) onChanged3;
  Color color3;
  RecentTask({
    required this.onChanged1,
    required this.onTap1,
    required this.color1,
    required this.state1,
    required this.onChanged2,
    required this.onTap2,
    required this.color2,
    required this.state2,
    required this.onChanged3,
    required this.onTap3,
    required this.color3,
    required this.state3,
  });
  @override
  State<RecentTask> createState() => _RecentTaskState();
}

class _RecentTaskState extends State<RecentTask> {
  @override
  Widget build(BuildContext context) {
    return ColumnDesign(children: [
      RowDesign(children: [
        TextDesign(data: 'Recent Tasks', size: 20),
        TextButton(
            onPressed: () {},
            child: TextDesign(
              data: 'All Tasks',
              color: Color(0xffFE3997),
            ))
      ]),
      RecentTaskWidget(
        onChanged1: widget.onChanged1,
        onTap1: widget.onTap1,
        color1: widget.color1,
        state1: widget.state1,
        onChanged2: widget.onChanged2,
        onTap2: widget.onTap2,
        color2: widget.color2,
        state2: widget.state2,
        onChanged3: widget.onChanged3,
        onTap3: widget.onTap3,
        color3: widget.color3,
        state3: widget.state3,
      )
    ]);
  }
}
