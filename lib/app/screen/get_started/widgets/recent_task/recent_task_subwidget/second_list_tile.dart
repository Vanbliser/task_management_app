import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/image_icon_stack.dart';

import 'my_list_tile.dart';

class SecondListTile extends StatefulWidget {
  void Function() onTap;
  void Function(bool? value) onChanged;
  Color color;
  bool state;
  SecondListTile(
      {required this.onChanged,
      required this.onTap,
      required this.color,
      required this.state});

  @override
  State<SecondListTile> createState() => _SecondListTileState();
}

class _SecondListTileState extends State<SecondListTile> {
  @override
  Widget build(BuildContext context) {
    return MyListTile(
        title: 'Wireframing Concept',
        subtitle: 'Today',
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        color: widget.color,
        icons: ImageIconStack(
          size: 12,
          images: [
            ImageIconDesign(assetName: "assets/man2.jpg"),
            ImageIconDesign(assetName: "assets/man1.jpg"),
            ImageIconDesign(assetName: "assets/woman.jpeg"),
          ],
        ),
        state: widget.state);
  }
}
