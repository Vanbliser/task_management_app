import 'package:flutter/material.dart';

class ImageiconStackBorder extends StatelessWidget {
  Widget child;
  ImageiconStackBorder({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Color(0xff3B30A6))),
      child: child,
    );
  }
}
