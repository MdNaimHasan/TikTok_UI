import 'package:flutter/material.dart';
import 'package:tiktok_ui/utilities/button.dart';

class Post extends StatelessWidget {
  Color color;
  String user_name, video_title;
  int likes, comments, share;

  Post({
    required this.color,
    required this.user_name,
    required this.video_title,
    required this.likes,
    required this.comments,
    required this.share,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Stack(
        children: [
          // user name with caption
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "@$user_name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$video_title",
                      ),
                      TextSpan(
                        text: "  #dart #flutter",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // buttons for interaction
          Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment(1, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                My_Button(
                  icon_data: Icons.favorite,
                  number: likes,
                ),
                SizedBox(
                  height: 20.0,
                ),
                My_Button(
                  icon_data: Icons.chat_bubble,
                  number: comments,
                ),
                SizedBox(
                  height: 20.0,
                ),
                My_Button(
                  icon_data: Icons.send,
                  number: share,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
