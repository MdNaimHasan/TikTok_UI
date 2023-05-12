import 'package:flutter/material.dart';

import '../utilities/grid_view.dart';

class Profile_Page extends StatelessWidget {
  var number_style = TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  var text_style = TextStyle(
    color: Colors.black,
    fontSize: 20.0,
  );

  var icon_color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Md Naim Hasan",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.person_add,
              color: icon_color,
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  right: 20.0,
                ),
                child: Icon(
                  Icons.menu,
                  color: icon_color,
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              //profile photo
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
              ),

              //user name
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Text(
                  "@MdNaimHasan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),

              //following, followers, likes
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //following
                    Column(
                      children: [
                        Text(
                          "123",
                          style: number_style,
                        ),
                        Text(
                          "@following",
                          style: text_style,
                        ),
                      ],
                    ),
                    //followers
                    Column(
                      children: [
                        Text(
                          "456K",
                          style: number_style,
                        ),
                        Text(
                          "@followers",
                          style: text_style,
                        ),
                      ],
                    ),
                    //likes
                    Column(
                      children: [
                        Text(
                          "789M",
                          style: number_style,
                        ),
                        Text(
                          "@likes",
                          style: text_style,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //buttons-> instagram link, bookmark, edit profile
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "Edit Profile",
                        style: text_style,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: icon_color,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Icon(
                        Icons.bookmark_border,
                        color: icon_color,
                      ),
                    ),
                  ],
                ),
              ),

              //bio
              Text(
                "Bio here",
                style: text_style,
              ),

              //tabs
              TabBar(
                indicatorColor: Colors.deepPurple,
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.grid_3x3,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Grid_View(
                      item_color: Colors.green,
                    ),
                    Grid_View(
                      item_color: Colors.blue,
                    ),
                    Grid_View(
                      item_color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
