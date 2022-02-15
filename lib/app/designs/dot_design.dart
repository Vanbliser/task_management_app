import 'package:flutter/material.dart';

class DotDesign extends StatelessWidget {
  Color color;
  DotDesign({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 3,
        height: 3,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: color));
  }
}
