import 'package:flutter/material.dart';

import 'ongoing_project_card.dart';

class OngoingProjectWidgetListView extends StatefulWidget {
  List<Widget> children;
  OngoingProjectWidgetListView({required this.children});

  @override
  State<OngoingProjectWidgetListView> createState() =>
      _OngoingProjectWidgetListViewState();
}

class _OngoingProjectWidgetListViewState
    extends State<OngoingProjectWidgetListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child: ListView(
            itemExtent: 265,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: widget.children));
  }
}

class OngoingProjectCard1 extends StatefulWidget {
  double value;
  OngoingProjectCard1({required this.value});
  @override
  State<OngoingProjectCard1> createState() => _OngoingProjectCard1State();
}

class _OngoingProjectCard1State extends State<OngoingProjectCard1> {
  @override
  Widget build(BuildContext context) {
    return OngoingProjectCard(
      title: 'Nggolek Duwet UI Kit',
      icon: Icon(Icons.mood_sharp, color: Color(0xff4840AB)),
      cardColor: Color(0xFFEAE8FE),
      iconColor: Color(0xff4840AB),
      iconBackground: Color(0xffC5C1F5),
      value: widget.value,
    );
  }
}

class OngoingProjectCard2 extends StatefulWidget {
  double value;
  OngoingProjectCard2({required this.value});
  @override
  State<OngoingProjectCard2> createState() => _OngoingProjectCard2State();
}

class _OngoingProjectCard2State extends State<OngoingProjectCard2> {
  @override
  Widget build(BuildContext context) {
    return OngoingProjectCard(
      title: 'Nggolek Duwet UX Kit',
      icon: Icon(Icons.album_sharp, color: Color(0xffFF3998)),
      cardColor: Color(0xFFFCDFF1),
      iconColor: Color(0xffFF3998),
      iconBackground: Color(0xffF5B3DA),
      value: widget.value,
    );
  }
}
