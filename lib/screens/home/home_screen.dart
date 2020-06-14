import 'package:flutter/material.dart';
import 'package:techph_course_app/screens/home/widgets/course_category.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
            icon: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset("assets/images/menu.png"),
            ),
            onPressed: () {
              debugPrint("menu is pressed");
            },
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Container(
                height: 30,
                width: 30,
                // child: Image.asset("assets/images/harvey.jpg"),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.cover,
                        image: new AssetImage('assets/images/harvey.jpg'))),
              ),
              onPressed: () {
                debugPrint("profile is pressed");
              },
            ),
          )
        ],
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Hey Harvey,",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 24),
                  child: Text(
                    "Find a course you want to learn",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF61688B),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F7),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        child: Image.asset("assets/images/search.png"),
                        width: 24,
                        height: 24,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search for your course...",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFA0A5BD),
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0D1333),
                        ),
                      ),
                      FlatButton(
                          onPressed: () {
                            debugPrint("See All clicked");
                          },
                          child: Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6E8AFA),
                            ),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 180 / 240,
                    children: <Widget>[
                      CourseCategory(
                        image: "assets/images/marketing.png",
                        title: "Marketing",
                        number: 17,
                      ),
                      CourseCategory(
                        image: "assets/images/photography.png",
                        title: "Photography",
                        number: 13,
                      ),
                      CourseCategory(
                        image: "assets/images/business.png",
                        title: "Business",
                        number: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
