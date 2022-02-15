import 'package:flutter/cupertino.dart';
import 'package:task_management_app/app/routes/route_names.dart';
import 'package:task_management_app/app/screen/home/home.dart';
import 'package:task_management_app/app/screen/get_started/get_started.dart';

Map<String, Value> route = {
  RouteName.homePage: (_) => HomePage(),
  RouteName.getStartedPage: (_) => GetStartedPage(),
};

typedef Value = Widget Function(BuildContext);
