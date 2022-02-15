import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/text_design.dart';

import 'lists.dart';

class MyListTiles extends StatefulWidget {
  Color color;
  MyListTiles({required this.color});

  @override
  State<MyListTiles> createState() => _MyListTilesState();
}

class _MyListTilesState extends State<MyListTiles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextDesign(data: 'Subtasks', color: widget.color, weight: 4),
          SizedBox(height: 5),
          Lists(color: widget.color)
        ],
      ),
    );
  }
}
