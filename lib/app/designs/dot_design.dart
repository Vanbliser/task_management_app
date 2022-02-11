import 'package:flutter/material.dart';

class DotDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 3,
        height: 3,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Color(0xff3B30A6)));
  }
}
