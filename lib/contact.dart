import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  final PageController _controller;
  Contact(this._controller);
  @override
  _ContactState createState() => _ContactState(_controller);
}

class _ContactState extends State<Contact> {
  final PageController _controller;
  _ContactState(this._controller);
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
  final _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffC2FFD8),
                Color(0xff130CB7),
              ],
            ),
          ),
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
            title: Text(
              "Contact",
              style: TextStyle(color: Colors.blue),
            ),
            backgroundColor: Color(0xffffff),
          ),
          body: Form(
            key: _formKey,
            child: Center(
              child: Container(
                height: 500,
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Subject",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 100),
                            labelText: "   Message",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        MaterialButton(
                          onPressed: () {},
                          child: Text("Submit"),
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 50,
                          ),
                          color: Colors.blue,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
