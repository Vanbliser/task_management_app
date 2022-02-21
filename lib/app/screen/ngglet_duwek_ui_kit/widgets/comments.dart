import 'package:flutter/material.dart';
import 'package:task_management_app/app/screen/ngglet_duwek_ui_kit/widgets/subwidgets/comment_widget/my_comment_row.dart';
import 'package:task_management_app/app/screen/ngglet_duwek_ui_kit/widgets/subwidgets/comment_widget/my_text_field.dart';

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
        boxShadow: [
          BoxShadow(
            color: Color(0xff585858),
            blurRadius: 5,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [MyTextField(color: color), MycommentRow(color: color)],
      ),
    );
  }
}
