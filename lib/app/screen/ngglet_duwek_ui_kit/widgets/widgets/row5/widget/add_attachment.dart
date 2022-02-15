import 'package:flutter/material.dart';

class AddAttachment extends StatelessWidget {
  Color color;
  AddAttachment({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Color(0xffffff00),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: color)),
      child: Icon(Icons.add, size: 20),
    );
  }
}
