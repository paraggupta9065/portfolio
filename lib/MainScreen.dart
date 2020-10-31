import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatefulWidget {
  final PageController _controller;
  MainScreen(this._controller);
  @override
  _MainScreenState createState() => _MainScreenState(_controller);
}

class _MainScreenState extends State<MainScreen> {
  final PageController _controller;
  _MainScreenState(this._controller);

  String description =
      "Hello, 👋 I'm Parag Gupta, Developer For Flutter, Dart & Web Tech. To the outside world, I am just an ordinary Flutter Programer but secretly with the help of my Linux pc, I fight bugs and create awesome content for the community. And I’ll continue to become the better version of myself.";

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

  List connect = [Colors.white, Colors.white, Colors.white, Colors.white];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff52E5E7),
                Color(0xff130CB7),
              ])),
            ),
            Scaffold(
              backgroundColor: Color(0xffffff),
              appBar: AppBar(
                title: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                )),
                backgroundColor: Color(0xffffff),
              ),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("image/id.jpeg"),
                        radius: 100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "Parag Gupta",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 50,
                        right: 50,
                        top: 10,
                      ),
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 100,
                        right: 100,
                        top: 10,
                      ),
                      child: Text(
                        "Technical Qualification ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: constraints.maxWidth <= 900
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Python",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Dart",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Flutter",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "Wordpress",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "WooCommerce",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            : Padding(
                                padding: EdgeInsets.symmetric(horizontal: 300),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Python",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Dart",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Flutter",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Wordpress",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "WooCommerce",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              )),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 100,
                        right: 100,
                        top: 10,
                      ),
                      child: Text(
                        "Connect At",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 150, left: 150, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MouseRegion(
                            onHover: (event) {
                              setState(() {
                                connect[0] = Colors.blue[200];
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                connect[0] = Colors.white;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 10,
                              ),
                              child: GestureDetector(
                                onTap: () => _launchURL(
                                    "https://Instagram.com/parag_gupta01"),
                                child: Text(
                                  "Instagram",
                                  style: TextStyle(color: connect[0]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 100,
                        bottom: 10,
                      ),
                      child: Text(
                        "Made With Flutter By Parag Gupta",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _launchURL(String inputurl) async {
    String url = inputurl;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
