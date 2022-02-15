import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  bool state;
  void Function(bool? value) onChanged;
  MyCheckbox({required this.state, required this.onChanged});
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
          side: BorderSide(color: Color(0xff6C66C0)),
          shape: CircleBorder(),
          value: widget.state,
          onChanged: widget.onChanged),
    );
  }
}
