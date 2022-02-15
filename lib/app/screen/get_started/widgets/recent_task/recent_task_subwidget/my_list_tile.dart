import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/my_checkbox.dart';
import 'package:task_management_app/app/designs/text_design.dart';

import 'list_tile_subtitle.dart';

class MyListTile extends StatefulWidget {
  String title, subtitle;
  Widget icons;
  bool state;
  Color color;
  void Function() onTap;
  void Function(bool? value) onChanged;
  MyListTile(
      {required this.title,
      required this.subtitle,
      required this.icons,
      required this.state,
      required this.onTap,
      required this.onChanged,
      required this.color});
  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff6C66C0), width: 0.4),
          color: widget.color,
          borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        dense: true,
        title: TextDesign(data: widget.title, size: 14),
        subtitle: ListTileSubtitle(
            subtitle: widget.subtitle, iconStacks: widget.icons),
        trailing: MyCheckbox(state: widget.state, onChanged: widget.onChanged),
        onTap: widget.onTap,
      ),
    );
  }
}
