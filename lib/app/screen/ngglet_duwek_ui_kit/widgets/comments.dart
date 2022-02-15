import 'package:flutter/material.dart';
import 'package:task_management_app/app/screen/ngglet_duwek_ui_kit/widgets/widgets/comment_widget/my_comment_row.dart';
import 'package:task_management_app/app/screen/ngglet_duwek_ui_kit/widgets/widgets/comment_widget/my_text_field.dart';

class Comments extends StatelessWidget {
  Color color;
  Comments({required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      width: 315,
      height: 65,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xffC3C3C3))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [MyTextField(color: color), MycommentRow(color: color)],
      ),
    );
  }
}
