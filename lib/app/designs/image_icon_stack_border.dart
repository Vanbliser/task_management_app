import 'package:flutter/material.dart';

class ImageiconStackBorder extends StatelessWidget {
  Widget child;
  ImageiconStackBorder({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0x00000000),
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xffC3C3C3))),
      child: child,
    );
  }
}
