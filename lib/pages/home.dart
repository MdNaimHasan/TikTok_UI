import 'package:flutter/material.dart';

import '../utilities/post.dart';

class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(
      initialPage: 0,
    );
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          Post(
            color: Colors.red,
            user_name: "MdNaimHasan",
            video_title: "TikTok UI using flutter #dart #flutter",
            likes: 123,
            comments: 456,
            share: 789,
          ),
          Post(
            color: Colors.green,
            user_name: "MdNaimHasan",
            video_title: "TikTok UI using flutter #dart #flutter",
            likes: 123,
            comments: 456,
            share: 789,
          ),
          Post(
            color: Colors.blue,
            user_name: "MdNaimHasan",
            video_title: "TikTok UI using flutter #dart #flutter",
            likes: 123,
            comments: 456,
            share: 789,
          ),
        ],
      ),
    );
  }
}
