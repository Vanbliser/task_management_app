import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/image_icon_stack.dart';

import 'my_list_tile.dart';

class FourthListTile extends StatefulWidget {
  void Function() onTap;
  void Function(bool? value) onChanged;
  Color color;
  bool state;
  FourthListTile(
      {required this.state,
      required this.onChanged,
      required this.onTap,
      required this.color});

  @override
  State<FourthListTile> createState() => _FourthListTileState();
}

class _FourthListTileState extends State<FourthListTile> {
  @override
  Widget build(BuildContext context) {
    return MyListTile(
        title: 'Build',
        subtitle: 'Next Tomorrow',
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
