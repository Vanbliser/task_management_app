// ignore_for_file: prefer_const_constructors

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/routes/routes.dart';
import 'package:task_management_app/app/screen/home/home.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xff3C32A5),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (setting) =>
          MaterialPageRoute(builder: route[setting.name]!),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: Color(0xff3C32A5), brightness: Brightness.light),
      home: HomePage(),
    );
  }
}
