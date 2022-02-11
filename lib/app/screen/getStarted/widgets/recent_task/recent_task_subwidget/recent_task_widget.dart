import 'package:flutter/material.dart';
import 'package:task_management_app/app/screen/getStarted/widgets/recent_task/recent_task_subwidget/first_list_tile.dart';
import 'package:task_management_app/app/screen/getStarted/widgets/recent_task/recent_task_subwidget/fourth-list_tile.dart';
import 'package:task_management_app/app/screen/getStarted/widgets/recent_task/recent_task_subwidget/second_list_tile.dart';
import 'package:task_management_app/app/screen/getStarted/widgets/recent_task/recent_task_subwidget/third_list_tile.dart';

class RecentTaskWidget extends StatefulWidget {
  @override
  State<RecentTaskWidget> createState() => _RecentTaskWidgetState();
}

class _RecentTaskWidgetState extends State<RecentTaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView(
        shrinkWrap: true,
        children: [
          FirstListTile(),
          SecondListTile(),
          ThirdListTile(),
          FourthListTile()
        ],
      ),
    );
  }
}
