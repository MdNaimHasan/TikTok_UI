import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/add.dart';

import 'pages/home.dart';
import 'pages/inbox.dart';
import 'pages/profile.dart';
import 'pages/search.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({
    Key? key,
  }) : super(key: key);

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  int _curr_index = 0;

  List<Widget> _pages = [
    Home_Page(),
    Search_Page(),
    Add_Page(),
    Inbox(),
    Profile_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _pages[_curr_index],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _curr_index,
          onTap: (int index) {
            setState(() {
              _curr_index = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_rounded,
                color: Colors.white,
              ),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_rounded,
                color: Colors.white,
              ),
              label: "Inbox",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
