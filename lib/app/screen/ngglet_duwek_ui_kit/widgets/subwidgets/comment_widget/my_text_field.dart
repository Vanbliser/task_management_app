import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  Color color;
  MyTextField({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 30,
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
            enabled: false,
            hintText: 'Write a comment, or post an update...',
            suffixIcon: Transform.rotate(
                angle: -0.523599, child: Icon(Icons.send, color: color)),
            hintStyle: TextStyle(
                fontSize: 13,
                color: Color(0xffC3C3C3),
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
