import 'package:flutter/material.dart';

import 'image_icon_stack_border.dart';

class ImageIconStack extends StatefulWidget {
  List<Widget> images;
  double size;
  ImageIconStack({required this.images, required this.size});

  @override
  State<ImageIconStack> createState() => _ImageIconStackState();
}

class _ImageIconStackState extends State<ImageIconStack> {
  List<Widget> items = [];
  double offset = 0;

  @override
  void initState() {
    offset = (widget.images.length - 1) * (widget.size - (widget.size / 4));
    for (var i = 0; i < widget.images.length; i++) {
      Widget a = Positioned(
          left: offset, child: ImageiconStackBorder(child: widget.images[i]));
      items.add(a);
      offset -= (widget.size - (widget.size / 4));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.size,
        width: widget.size,
        child: Center(
          child: Stack(
              alignment: Alignment.centerRight,
              clipBehavior: Clip.none,
              children: items),
        ));
  }
}
