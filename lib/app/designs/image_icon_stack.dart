import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/image_icon_stack_border.dart';

class ImageIconStack extends StatefulWidget {
  List<Widget> images;
  ImageIconStack({required this.images});

  @override
  State<ImageIconStack> createState() => _ImageIconStackState();
}

class _ImageIconStackState extends State<ImageIconStack> {
  List<Widget> items = [];
  double offset = 16;

  @override
  void initState() {
    for (var i = 0; i < widget.images.length; i++) {
      Widget a = Positioned(
          left: offset, child: ImageiconStackBorder(child: widget.images[i]));
      items.add(a);
      offset -= 8;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 14,
        width: 12,
        child: Stack(
            alignment: Alignment.centerRight,
            clipBehavior: Clip.none,
            children: items));
  }
}
