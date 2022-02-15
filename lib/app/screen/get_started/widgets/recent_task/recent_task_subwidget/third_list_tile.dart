import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/image_icon_stack.dart';

import 'my_list_tile.dart';

class ThirdListTile extends StatefulWidget {
  void Function() onTap;
  void Function(bool? value) onChanged;
  Color color;
  bool state;
  ThirdListTile(
      {required this.state,
      required this.onChanged,
      required this.onTap,
      required this.color});

  @override
  State<ThirdListTile> createState() => _ThirdListTileState();
}

class _ThirdListTileState extends State<ThirdListTile> {
  @override
  Widget build(BuildContext context) {
    return MyListTile(
        title: 'Create Style Guide',
        subtitle: 'Tomorrow',
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        color: widget.color,
        icons: ImageIconStack(
          size: 12,
          images: [
            ImageIconDesign(assetName: "assets/man1.jpg"),
            ImageIconDesign(assetName: "assets/woman.jpeg"),
          ],
        ),
        state: widget.state);
  }
}
