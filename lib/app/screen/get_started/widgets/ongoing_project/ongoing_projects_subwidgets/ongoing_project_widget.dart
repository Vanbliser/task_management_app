import 'package:flutter/material.dart';
import 'package:task_management_app/app/screen/ngglet_duwek_ui_kit/ngglet_duwek_ui_kit.dart';

import 'ongoing_project_widget_listview.dart';

class OngoingProjectWidget extends StatefulWidget {
  double value;
  OngoingProjectWidget({required this.value});

  @override
  State<OngoingProjectWidget> createState() => _OngoingProjectWidgetState();
}

class _OngoingProjectWidgetState extends State<OngoingProjectWidget> {

  @override
  Widget build(BuildContext context) {
    return OngoingProjectWidgetListView(children: [
      InkWell(
          child: OngoingProjectCard1(value: widget.value),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      NggletDuwekUIKit(color: Color(0xff4840AB)),
                ));
          }),
      InkWell(
          child: OngoingProjectCard2(value: widget.value),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      NggletDuwekUIKit(color: Color(0xffFF3998)),
                ));
          })
    ]);
  }
}
