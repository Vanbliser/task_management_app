import 'package:flutter/material.dart';

class ListCheckbox extends StatefulWidget {
  bool state;
  Color color;
  void Function(bool? value) onChanged;
  ListCheckbox(
      {required this.state, required this.onChanged, required this.color});
  @override
  State<ListCheckbox> createState() => _ListCheckboxState();
}

class _ListCheckboxState extends State<ListCheckbox> {
  @override
  void initState() {
    if (widget.color == Color(0xff4840AB)) {
      widget.color == Color(0xffFF3998);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
          checkColor: Colors.white,
          activeColor: widget.color,
          side: BorderSide(color: widget.color),
          shape: CircleBorder(),
          value: widget.state,
          onChanged: widget.onChanged),
    );
  }
}
