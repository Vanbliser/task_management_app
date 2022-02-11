import 'package:flutter/material.dart';

class ImageIconDesign extends StatelessWidget {
  late double size;
  late String assetName;
  ImageIconDesign({this.size=12, required this.assetName});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(assetName))),
    );
  }
}
