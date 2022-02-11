import 'package:flutter/material.dart';

Map<int, FontWeight> wts = {
  1: FontWeight.w100,
  2: FontWeight.w200,
  3: FontWeight.w300,
  4: FontWeight.w400,
  5: FontWeight.w500,
  6: FontWeight.w600,
  7: FontWeight.w700,
  8: FontWeight.w800,
  9: FontWeight.w900
};

class TextDesign extends StatelessWidget {
  String data;
  Color? color;
  double? size;
  int? weight;
  late FontWeight? fontWeight = wts[weight];
  TextDesign(
      {required this.data,
      this.color = const Color(0xff3C32A5),
      this.size = 12,
      this.weight = 7});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(color: color, fontSize: size, fontWeight: fontWeight));
  }
}
