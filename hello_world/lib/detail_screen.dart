import 'package:flutter/material.dart';

class FullScreenImageScreen extends StatelessWidget {
  String urlImage;

  FullScreenImageScreen({this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Full Screen Image!"),
      ),
      body: Hero(
        tag: "hero",
        child: Image.asset(urlImage),
      ),
    );
  }
}
