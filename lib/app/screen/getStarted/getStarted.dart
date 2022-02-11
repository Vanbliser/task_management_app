import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/Column_design.dart';
import 'package:task_management_app/app/designs/card_design.dart';
import 'package:task_management_app/app/designs/gradient_design.dart';
import 'package:task_management_app/app/screen/getStarted/widgets/first_row.dart';
import 'package:task_management_app/app/screen/getStarted/widgets/recent_task/recent_task.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradiantDesign(
      child: ColumnDesign(axisSize: MainAxisSize.max, children: [
        FirstRow(),
        CardDesign(
          children: [RecentTask()],
        ),
      ]),
    );
  }
}
