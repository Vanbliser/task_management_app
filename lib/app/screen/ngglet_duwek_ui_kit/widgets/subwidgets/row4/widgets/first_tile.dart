import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_design.dart';
import 'package:task_management_app/app/designs/image_icon_stack.dart';

import 'tile_design.dart';

class FirstTile extends StatelessWidget {
  Color bgcolor, color;
  bool state;
  FirstTile({required this.bgcolor, required this.color, required this.state});
  @override
  Widget build(BuildContext context) {
    return TileDesign(
      bgcolor: bgcolor,
      color: color,
      title: 'Wireframing Concept',
      subtitle: 'today',
      state: state,
      icons: ImageIconStack(
        size: 12,
        images: [
          ImageIconDesign(assetName: "assets/man2.jpg"),
          ImageIconDesign(assetName: "assets/man1.jpg"),
          ImageIconDesign(assetName: "assets/woman.jpeg"),
        ],
      ),
    );
  }
}
