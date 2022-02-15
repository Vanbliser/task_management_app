import 'package:flutter/material.dart';
import 'outgoing_row1.dart';
import 'outgoing_row2.dart';
import 'outgoing_row3.dart';

class OutgoingColumn extends StatefulWidget {
  String title;
  IconData? icon;
  Color iconColor, iconBackground;
  double value;
  OutgoingColumn(
      {required this.title,
      required this.icon,
      required this.iconColor,
      required this.iconBackground,
      required this.value});

  @override
  State<OutgoingColumn> createState() => _OutgoingColumnState();
}

class _OutgoingColumnState extends State<OutgoingColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OutgoingRow1(
          title: widget.title,
          icon: widget.icon,
          iconColor: widget.iconColor,
          iconBackground: widget.iconBackground,
        ),
        OutgoingRow2(color: widget.iconColor),
        OutgoingRow3(color: widget.iconColor,value:widget.value)
      ],
    );
  }
}
