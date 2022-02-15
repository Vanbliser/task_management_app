import 'package:flutter/material.dart';

class AppBarLeadingIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 25,
        alignment: Alignment.centerLeft,
        splashColor: Color(0x00000000),
        highlightColor: Color(0x00000000),
        hoverColor: Color(0x00000000),
        focusColor: Color(0x00000000),
        padding: EdgeInsets.all(0),
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back));
  }
}

List<Widget> actionsIcon = [
  Icon(Icons.share_outlined),
  SizedBox(width: 15),
  Icon(Icons.more_horiz_outlined)
];

AppBar myAppBar = AppBar(
  leading: AppBarLeadingIcon(),
  backgroundColor: Color(0x00000000),
  actions: actionsIcon,
  actionsIconTheme: IconThemeData(color: Colors.white, size: 25),
  elevation: 0,
);
