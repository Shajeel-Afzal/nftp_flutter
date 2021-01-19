import 'package:firebase_authentication/Post.dart';
import 'package:firebase_authentication/Services/FirebaseAuthService.dart';
import 'package:firebase_authentication/main.dart';
import 'package:flutter/material.dart';

class TimeLineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NFTP Group Discussion!"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await FirebaseAuthservice().logout();
              // Navigator.pushAndRemoveUntil(
              //   context,
              //   MaterialPageRoute(
              //     builder: (BuildContext context) {
              //       return LoginScreen();
              //     },
              //   ),
              //   (r) => false,
              // );
            },
          ),
        ],
      ),
      body: Text("Timeline will show here!"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return PostScreen();
              },
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
