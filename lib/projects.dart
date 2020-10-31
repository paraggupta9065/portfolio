import 'dart:ui';

import 'package:flutter/material.dart';
import 'projectsModel.dart';

class Projects extends StatefulWidget {
  final PageController _controller;
  Projects(this._controller);

  @override
  _ProjectsState createState() => _ProjectsState(_controller);
}

class _ProjectsState extends State<Projects> {
  final PageController _controller;
  _ProjectsState(this._controller);

  List buttonColour = [
    Color(0xffffff),
    Color(0xffffff),
    Color(0xffffff),
    Color(0xffffff)
  ];
  List buttonText = ["Home", "Projects", "Contact", "Blog"];
  List buttonHover = [0, 0, 0, 0];
  List buttonTextColors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];

  List<ProjectsModdel> projects = [
    ProjectsModdel(
      "HifiDeoria",
      "HiFi Deoria is a delivery app that delivers In deoria district. It is made using woocommerce then made webview app using flutter ",
      [
        "ecommerce",
        "woocmmerce",
        "wordpress",
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff3B2667),
              Color(0xffBC78EC),
            ])),
          ),
          Scaffold(
            backgroundColor: Color(0xffffff),
            appBar: AppBar(
              actions: [
                Center(
                  child: Row(
                    children: [
                      MouseRegion(
                        onHover: (event) {
                          setState(() {
                            buttonColour[0] = Colors.white;
                            buttonHover[0] = 10;
                            buttonTextColors[0] = Colors.blue;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            buttonColour[0] = Color(0xffffff);
                            buttonHover[0] = 0;
                            buttonTextColors[0] = Colors.white;
                          });
                        },
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(0);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: buttonColour[0],
                            elevation: buttonHover[0],
                            child: Padding(
                              child: Text(
                                buttonText[0],
                                style: TextStyle(
                                  color: buttonTextColors[0],
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        onHover: (event) {
                          setState(() {
                            buttonColour[1] = Colors.white;
                            buttonHover[1] = 10;
                            buttonTextColors[1] = Colors.blue;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            buttonColour[1] = Color(0xffffff);
                            buttonHover[1] = 0;
                            buttonTextColors[1] = Colors.white;
                          });
                        },
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(1);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: buttonColour[1],
                            elevation: buttonHover[1],
                            child: Padding(
                              child: Text(
                                buttonText[1],
                                style: TextStyle(
                                  color: buttonTextColors[1],
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        onHover: (event) {
                          setState(() {
                            buttonColour[2] = Colors.white;
                            buttonHover[2] = 10;
                            buttonTextColors[2] = Colors.blue;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            buttonColour[2] = Color(0xffffff);
                            buttonHover[2] = 0;
                            buttonTextColors[2] = Colors.white;
                          });
                        },
                        child: GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: buttonColour[2],
                            elevation: buttonHover[2],
                            child: Padding(
                              child: Text(
                                buttonText[2],
                                style: TextStyle(
                                  color: buttonTextColors[2],
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
              title: Text("Projects"),
              backgroundColor: Color(0xffffff),
            ),
            body: Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) => SizedBox(
                  height: 300,
                  width: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Text(
                              projects[index].name,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xff3B2667),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Text(
                              projects[index].description,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff3B2667),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth <= 600
                      ? 1
                      : constraints.maxWidth <= 960
                          ? 2
                          : 4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
