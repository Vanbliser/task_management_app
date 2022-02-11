import 'package:flutter/material.dart';

class RowDesign extends StatelessWidget {
  late final double l_pad, r_pad, t_pad, b_pad;
  late MainAxisSize axisSize;
  late MainAxisAlignment mainAxis;
  List<Widget> children;
  RowDesign(
      {this.l_pad = 0,
      this.r_pad = 0,
      this.t_pad = 0,
      this.b_pad = 0,
      this.axisSize = MainAxisSize.max,
      this.mainAxis = MainAxisAlignment.spaceBetween,
      required this.children});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: l_pad, right: r_pad, top: t_pad, bottom: b_pad),
      child: Row(
        mainAxisSize: axisSize,
        mainAxisAlignment: mainAxis,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}
