import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:paraggupta/contact.dart';
import 'package:paraggupta/projects.dart';
import 'MainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MainScreen(_controller),
          Projects(_controller),
          Contact(_controller),
        ],
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
