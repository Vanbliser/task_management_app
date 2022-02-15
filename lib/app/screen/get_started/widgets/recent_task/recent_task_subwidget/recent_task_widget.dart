import 'package:flutter/material.dart';

import 'first_list_tile.dart';
import 'second_list_tile.dart';
import 'third_list_tile.dart';

class RecentTaskWidget extends StatefulWidget {
  void Function() onTap1;
  void Function(bool? value) onChanged1;
  Color color1;
  bool state1;
  void Function() onTap2;
  void Function(bool? value) onChanged2;
  Color color2;
  bool state2;
  void Function() onTap3;
  void Function(bool? value) onChanged3;
  Color color3;
  bool state3;
  RecentTaskWidget({
    required this.onChanged1,
    required this.onTap1,
    required this.color1,
    required this.state1,
    required this.onChanged2,
    required this.onTap2,
    required this.color2,
    required this.state2,
    required this.onChanged3,
    required this.onTap3,
    required this.color3,
    required this.state3,
  });
  @override
  State<RecentTaskWidget> createState() => _RecentTaskWidgetState();
}

class _RecentTaskWidgetState extends State<RecentTaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FirstListTile(
          onChanged: widget.onChanged1,
          onTap: widget.onTap1,
          color: widget.color1,
          state: widget.state1,
        ),
        SecondListTile(
          onChanged: widget.onChanged2,
          onTap: widget.onTap2,
          color: widget.color2,
          state: widget.state2,
        ),
        ThirdListTile(
          onChanged: widget.onChanged3,
          onTap: widget.onTap3,
          color: widget.color3,
          state: widget.state3,
        ),
      ],
    );
  }
}
