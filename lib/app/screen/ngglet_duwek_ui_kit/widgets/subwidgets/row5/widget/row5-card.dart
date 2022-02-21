import 'package:flutter/material.dart';

class Row5Card extends StatelessWidget {
  String assetName;
  Row5Card({required this.assetName});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xffffff00),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(assetName))));
  }
}
