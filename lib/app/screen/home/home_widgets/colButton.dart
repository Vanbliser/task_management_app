import 'package:flutter/material.dart';
import 'package:task_management_app/app/routes/route_names.dart';
import 'package:task_management_app/app/screen/home/home_widgets/colText.dart';

class ColButton extends StatelessWidget {
  final String data;
  ColButton({required this.data});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, RouteName.getStartedPage);
      },
      child: ColSmallText(data: data),
      style: ElevatedButton.styleFrom(
        primary: Color(0xffFF3998),
        fixedSize: Size(250, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
