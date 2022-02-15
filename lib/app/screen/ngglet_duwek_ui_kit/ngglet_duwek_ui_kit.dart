import 'package:flutter/material.dart';
import 'package:task_management_app/app/designs/my_appbar.dart';
import 'package:task_management_app/app/designs/gradient_design.dart';
import 'widgets/ngglet_card.dart';

class NggletDuwekUIKit extends StatefulWidget {
  Color color;
  NggletDuwekUIKit({required this.color});
  @override
  State<NggletDuwekUIKit> createState() => _NggletDuwekUIKitState();
}

class _NggletDuwekUIKitState extends State<NggletDuwekUIKit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GradientDesign(
            child: Container(
                child: Stack(fit: StackFit.expand, children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Scaffold(backgroundColor: Color(0x00000000), appBar: myAppBar)),
      Padding(
        padding: const EdgeInsets.only(top: 85),
        child: NggletCard(color: widget.color),
      )
    ]))));
  }
}
