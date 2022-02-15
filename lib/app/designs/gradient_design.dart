import 'package:flutter/material.dart';

class GradientDesign extends StatelessWidget {
  Widget? child;
  GradientDesign({this.child});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            radius: 0.4,
            center: Alignment(0.5, -0.65),
            colors: [Color(0xffA76CBC), Color(0x003C32A5)],
          ),
        ),
        child: child,
      ),
    );
  }
}
