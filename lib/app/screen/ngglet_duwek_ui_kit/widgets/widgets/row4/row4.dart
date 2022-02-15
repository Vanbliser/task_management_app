import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/text_design.dart';
import 'package:task_management_app/app/screen/get_started/get_started_designs/functions/data_maps.dart';

import 'widgets/my_list_tiles.dart';

class Row4 extends StatefulWidget {
  Color color;
  Row4({required this.color});
  @override
  State<Row4> createState() => _Row4State();
}

class _Row4State extends State<Row4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 260,
                  height: 3,
                  child: LinearProgressIndicator(
                      value: (value[0]! / 100),
                      backgroundColor: Color(0xffF2F2FA),
                      color: widget.color),
                ),
                TextDesign(data: '${value[0]!.toInt()}%', color: widget.color)
              ]),
          SizedBox(height: 10),
          TextDesign(
              data: 'UI kit that can be used for all purposes, simple, \n'
                  'to the point and neatly designed.',
              size: 15,
              weight: 4,
              color: widget.color),
          MyListTiles(color:widget.color)
        ],
      ),
    );
  }
}
