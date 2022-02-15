import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/Column_design.dart';
import 'package:task_management_app/app/designs/row_design.dart';
import 'package:task_management_app/app/designs/text_design.dart';

import 'ongoing_projects_subwidgets/ongoing_project_widget.dart';

class OngoingProject extends StatefulWidget {
  double value;
  OngoingProject({required this.value});
  @override
  State<OngoingProject> createState() => _OngoingProjectState();
}

class _OngoingProjectState extends State<OngoingProject> {
  @override
  Widget build(BuildContext context) {
    return ColumnDesign(children: [
      RowDesign(children: [
        TextDesign(data: 'Ongoing Projects', size: 20),
        TextButton(
            onPressed: () {},
            child: TextDesign(
              data: 'All Projects',
              color: Color(0xffFE3997),
            ))
      ]),
      OngoingProjectWidget(value:widget.value)
    ]);
  }
}
