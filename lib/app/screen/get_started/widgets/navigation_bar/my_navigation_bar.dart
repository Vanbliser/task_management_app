import 'package:flutter/material.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _value = 0;
    return Container(
      decoration: BoxDecoration(
          color: Color(0x00000000), borderRadius: BorderRadius.circular(40)),
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(18),
            boxShadow: [BoxShadow(color: Color(0xff585858), blurRadius: 1)]),
        child: BottomNavigationBar(
          iconSize: 30,
          currentIndex: _value,
          selectedItemColor: Color(0xff3B30A6),
          unselectedItemColor: Color(0xffB7B5CA),
          elevation: 0,
          backgroundColor: Color(0x00000000),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_box_outlined), label: 'My Task'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_rounded), label: 'Inbox')
          ],
          onTap: (value) {},
        ),
      ),
    );
  }
}
