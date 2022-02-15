import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/image_icon_stack.dart';

import 'my_list_tile.dart';

class FirstListTile extends StatefulWidget {
  void Function() onTap;
  void Function(bool? value) onChanged;
  Color color;
  bool state;
  FirstListTile(
      {required this.onChanged,
      required this.onTap,
      required this.color,
      required this.state});

  @override
  State<FirstListTile> createState() => _FirstListTileState();
}

class _FirstListTileState extends State<FirstListTile> {
  @override
  Widget build(BuildContext context) {
    return MyListTile(
      title: 'Create Moodboard',
      subtitle: 'Today',
      state: widget.state,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      color: widget.color,
      icons: ImageIconStack(
          size: 12, images: [ImageIconDesign(assetName: "assets/woman.jpeg")]),
    );
  }
}
