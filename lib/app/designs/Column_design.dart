import 'package:flutter/material.dart';

class ColumnDesign extends StatelessWidget {
  late double h_pad, v_pad;
  late MainAxisSize axisSize;
  late MainAxisAlignment mainAxis;
  List<Widget> children;
  ColumnDesign(
      {this.h_pad = 0,
      this.v_pad = 0,
      this.axisSize = MainAxisSize.min,
      this.mainAxis = MainAxisAlignment.start,
      required this.children});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: h_pad, vertical: v_pad),
        child: Column(
          mainAxisSize: axisSize,
          mainAxisAlignment: mainAxis,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
