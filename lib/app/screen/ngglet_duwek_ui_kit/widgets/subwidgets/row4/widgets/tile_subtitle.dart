import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/dot_design.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class TileSubtitle extends StatefulWidget {
  String subtitle;
  Widget iconStacks;
  Color color;

  TileSubtitle(
      {required this.subtitle, required this.iconStacks, required this.color});

  @override
  State<TileSubtitle> createState() => _TileSubtitleState();
}

class _TileSubtitleState extends State<TileSubtitle> {
  late List<Widget> children;

  @override
  void initState() {
    children = [
      TextDesign(data: widget.subtitle, size: 12, weight: 4, color: widget.color),
      SizedBox(width: 6),
      DotDesign(color: widget.color),
      SizedBox(width: 6),
      widget.iconStacks
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: children,
    );
  }
}
