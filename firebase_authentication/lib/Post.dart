import 'package:firebase_authentication/Services/DatabaseService.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Post"),
      ),
      body: Column(children: [
        TextField(
          controller: _textEditingController,
        ),
        RaisedButton(
          child: Text("POST"),
          onPressed: () {
            String userData = _textEditingController.text;

            DatabaseService().createPost(userData);
          },
        )
      ]),
    );
  }
}
