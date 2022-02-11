// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GradiantDesign extends StatelessWidget {
  Widget? child;
  GradiantDesign({this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 8, right: 8, top: 8),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.4,
              center: Alignment(0.5, -0.65),
              colors: [Color(0xffA76CBC), Color(0x003C32A5)],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
