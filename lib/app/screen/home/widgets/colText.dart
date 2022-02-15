import 'package:flutter/material.dart';

Color white = Colors.white;

class ColBigText extends StatelessWidget {
  final String data;
  ColBigText({required this.data});
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(color: white, fontSize: 33, fontWeight: FontWeight.bold),
    );
  }
}

class ColSmallText extends StatelessWidget {
  final String data;
  ColSmallText({required this.data});
  @override
  Widget build(BuildContext context) {
    return Text(data, style: TextStyle(color: white, fontSize: 14,height: 1.5));
  }
}
