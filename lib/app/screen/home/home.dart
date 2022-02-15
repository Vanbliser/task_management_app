// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'widgets/homeCol.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 10),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: HomeCols(), 
      ),
    );
  }
}
