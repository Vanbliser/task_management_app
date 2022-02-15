import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/text_design.dart';

class RecentFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 60),
        child: TextDesign(data: 'Recent Files', size: 20));
  }
}
