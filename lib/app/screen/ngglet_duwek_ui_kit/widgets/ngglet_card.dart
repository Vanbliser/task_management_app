import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/card_design.dart';

import 'comments.dart';
import 'subwidgets/row1/row1.dart';
import 'subwidgets/row2/row2.dart';
import 'subwidgets/row3/row3.dart';
import 'subwidgets/row4/row4.dart';
import 'subwidgets/row5/row5.dart';

class NggletCard extends StatefulWidget {
  Color color;
  NggletCard({required this.color});

  @override
  State<NggletCard> createState() => _NggletCardState();
}

class _NggletCardState extends State<NggletCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CardDesign(children: [
          Row1(color: widget.color),
          Row2(color: widget.color),
          Row3(color: widget.color),
          Row4(color: widget.color),
          Row5(color: widget.color),
        ]),
        Positioned(
          bottom: 0,
          child: Comments(color: widget.color),
        )
      ],
    );
  }
}
