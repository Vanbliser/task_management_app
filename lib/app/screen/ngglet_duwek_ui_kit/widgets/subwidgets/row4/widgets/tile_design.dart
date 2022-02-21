import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/text_design.dart';
import 'list_check_box.dart';
import 'tile_subtitle.dart';

class TileDesign extends StatefulWidget {
  Color color, bgcolor;
  String title, subtitle;
  Widget icons;
  bool state;
  TileDesign(
      {required this.bgcolor,
      required this.color,
      required this.title,
      required this.subtitle,
      required this.icons,
      required this.state});

  @override
  State<TileDesign> createState() => _TileDesignState();
}

class _TileDesignState extends State<TileDesign> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          border: Border.all(color: widget.color, width: 0.4),
          color: widget.bgcolor,
          borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        dense: true,
        title: TextDesign(
          data: widget.title,
          size: 14,
          color: widget.color,
        ),
        subtitle: TileSubtitle(
            subtitle: widget.subtitle,
            iconStacks: widget.icons,
            color: widget.color),
        trailing: ListCheckbox(
            state: widget.state, onChanged: (state) {}, color: widget.color),
        onTap: () {},
      ),
    );
  }
}
