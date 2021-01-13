import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String nftp = "Digital National Freelancing Program!";
  String fsm = "Flutter State Management";
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              isClicked ? nftp : fsm,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            RaisedButton(
              child: Text("Click Me!"),
              onPressed: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
