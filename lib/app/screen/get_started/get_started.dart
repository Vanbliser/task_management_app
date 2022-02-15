import 'package:flutter/material.dart';
import 'package:task_management_app/app/screen/get_started/get_started_designs/get_started_body.dart';
import 'get_started_designs/functions/data_maps.dart';
import 'get_started_designs/functions/first_tile.dart';
import 'get_started_designs/functions/init_function.dart';
import 'get_started_designs/functions/second_tile.dart';
import 'get_started_designs/functions/third_tile.dart';
import 'widgets/navigation_bar/my_navigation_bar.dart';
import 'widgets/ongoing_project/outgoing_project.dart';
import 'widgets/recent_files/recent_files.dart';
import 'widgets/recent_task/recent_task.dart';

class GetStartedPage extends StatefulWidget {
  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {

  @override
  void initState() {
    initFunc();
    super.initState();
  }

  void onTap1() => setState(() => on_tap1());

  void onChanged1(bool? state) => setState(() => on_changed1(state));

  void onTap2() => setState(() => on_tap2());

  void onChanged2(bool? state) => setState(() => on_changed2(state));

  void onTap3() => setState(() => on_tap3());

  void onChanged3(bool? state) => setState(() => on_changed3(state));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: GetStartedBody(children: [
        RecentTask(
          onChanged1: onChanged1,
          onChanged2: onChanged2,
          onChanged3: onChanged3,
          onTap1: onTap1,
          onTap2: onTap2,
          onTap3: onTap3,
          color1: color[1]!,
          color2: color[2]!,
          color3: color[3]!,
          state1: state[1]!,
          state2: state[2]!,
          state3: state[3]!,
        ),
        OngoingProject(value: value[0]!),
        RecentFiles(),
      ]),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
