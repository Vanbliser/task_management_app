import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  bool initialState;
  MyCheckbox({required this.initialState});
  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
          checkColor: Colors.white,
          activeColor: Color(0xffFC3998),
          side: BorderSide(color: Color(0xffCFCBFE), width: 0.5),
          shape: CircleBorder(),
          value: widget.initialState,
          onChanged: (_) {}),
    );
  }
}
