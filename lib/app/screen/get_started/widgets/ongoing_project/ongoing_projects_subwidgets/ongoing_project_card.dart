import 'package:flutter/material.dart';

import 'outgoing_column.dart';

class OngoingProjectCard extends StatefulWidget {
  String title;
  Widget icon;
  Color cardColor, iconColor, iconBackground;
  double value;

  OngoingProjectCard(
      {required this.title,
      required this.icon,
      required this.cardColor,
      required this.iconColor,
      required this.iconBackground,
      required this.value});

  @override
  State<OngoingProjectCard> createState() => _OngoingProjectCardState();
}

class _OngoingProjectCardState extends State<OngoingProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: widget.cardColor,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: OutgoingColumn(
              value: widget.value,
              title: widget.title,
              icon: widget.icon,
              iconColor: widget.iconColor,
              iconBackground: widget.iconBackground),
        ));
  }
}
