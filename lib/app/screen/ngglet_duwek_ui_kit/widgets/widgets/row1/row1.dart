import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/row_design.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class Row1 extends StatefulWidget {
  Color color;
  Row1({required this.color});

  @override
  State<Row1> createState() => _Row1State();
}

class _Row1State extends State<Row1> {
  Color iconBackground = Color(0xffF5B3DA);
  String title = 'Nggolek Duwet UX Kit';
  IconData icon = Icons.album_sharp;

  @override
  void initState() {
    if (widget.color == Color(0xff4840AB)) {
      iconBackground = Color(0xffC5C1F5);
      icon = Icons.mood_sharp;
      title = 'Nggolek Duwet UX Kit';
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      child: RowDesign(mainAxis: MainAxisAlignment.start, children: [
        Container(
          width: 35,
          height: 35,
          child: Center(child: Icon(icon, size: 25, color: widget.color)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: iconBackground,
          ),
        ),
        SizedBox(width: 10),
        TextDesign(data: title, color: widget.color, size: 20)
      ]),
    );
  }
}
