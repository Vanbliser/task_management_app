import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/my_checkbox.dart';
import 'package:task_management_app/app/designs/text_design.dart';
import 'package:task_management_app/app/screen/getStarted/widgets/recent_task/recent_task_subwidget/list_tile_subtitle.dart';

class MyListTile extends StatefulWidget {
  String title, subtitle;
  Widget icons;
  bool initialState;
  MyListTile(
      {required this.title,
      required this.subtitle,
      required this.icons,
      required this.initialState});
  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Color(0xffCECBFA), borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        title: TextDesign(data: widget.title, size: 14),
        subtitle: ListTileSubtitle(
            subtitle: widget.subtitle, iconStacks: widget.icons),
        trailing: MyCheckbox(initialState: widget.initialState),
        onTap: () {},
      ),
    );
  }
}
