import 'package:flutter/material.dart';
import 'package:task_management_app/app/screen/get_started/get_started_designs/functions/data_maps.dart';
import 'package:task_management_app/app/screen/ngglet_duwek_ui_kit/widgets/widgets/row4/widgets/first_tile.dart';
import 'package:task_management_app/app/screen/ngglet_duwek_ui_kit/widgets/widgets/row4/widgets/second_tile.dart';
import 'package:task_management_app/app/screen/ngglet_duwek_ui_kit/widgets/widgets/row4/widgets/third_tile.dart';

class Lists extends StatefulWidget {
  Color color;
  Lists({required this.color});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  Color bgcolor = Color(0xffFCF3F9);
  bool fstate = false, sstate = false, tstate = false;

  @override
  void initState() {
    if (widget.color == Color(0xff4840AB)) {
      //Color(0xff4840AB)
      bgcolor = Color(0xffF2F2FA);
    }
    fstate = state[2]!;
    sstate = state[3]!;
    tstate = state[1]!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FirstTile(bgcolor: bgcolor, color: widget.color, state: fstate),
        SecondTile(bgcolor: bgcolor, color: widget.color, state: sstate),
        ThirdTile(bgcolor: bgcolor, color: widget.color, state: tstate)
      ],
    );
  }
}
