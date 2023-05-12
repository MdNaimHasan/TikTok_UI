import 'package:flutter/material.dart';

class Grid_View extends StatelessWidget {
  var item_color;

  Grid_View({
    required this.item_color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridView.builder(
        itemCount: 13,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: item_color,
            ),
          );
        },
      ),
    );
  }
}
