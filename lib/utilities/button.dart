import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  var icon_data, number;

  My_Button({
    required this.icon_data,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon_data,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "$number",
        ),
      ],
    );
  }
}
