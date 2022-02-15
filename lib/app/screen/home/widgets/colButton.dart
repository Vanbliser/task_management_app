import 'package:flutter/material.dart';
import 'package:task_management_app/app/routes/route_names.dart';
import 'package:task_management_app/app/screen/home/widgets/colText.dart';

class ColButton extends StatelessWidget {
  final String data;
  ColButton({required this.data});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, RouteName.getStartedPage);
      },
      child: ColSmallText(data: 'Get Started Now'),
      style: ButtonStyle(
        animationDuration: Duration(seconds: 10),
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFF3998)),
        fixedSize: MaterialStateProperty.all(Size(265, 55)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) {
            return states.contains(MaterialState.pressed)
                ? Color(0xFFFF3998)
                : null;
          },
        ),
      ),
    );
  }
}
