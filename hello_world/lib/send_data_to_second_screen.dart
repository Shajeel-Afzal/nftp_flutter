import 'package:flutter/material.dart';
import 'package:hello_world/detail_screen.dart';

class DemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return FullScreenImageScreen(
                    urlImage: 'images/maxresdefault.jpg');
              },
            ),
          );
        },
        child: Container(
          height: 200,
          width: 200,
          child: Hero(
            tag: "hero",
            child: Image.asset('images/maxresdefault.jpg'),
          ),
        ),
      ),
    );
  }
}
