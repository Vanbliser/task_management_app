import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/Column_design.dart';
import 'package:task_management_app/app/designs/card_design.dart';
import 'package:task_management_app/app/designs/gradient_design.dart';
import 'package:task_management_app/app/screen/get_started/widgets/first_row.dart';

class GetStartedBody extends StatelessWidget {
  List<Widget> children;
  GetStartedBody({required this.children});
  @override
  Widget build(BuildContext context) {
    return GradientDesign(
        child: ColumnDesign(
            axisSize: MainAxisSize.max,
            children: [FirstRow(), CardDesign(children: children)]));
  }
}
