import 'package:firebase_authentication/Services/FirebaseAuthService.dart';
import 'package:firebase_authentication/main.dart';
import 'package:firebase_authentication/timeline_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
          Duration(seconds: 2),
        ),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.done:
              bool isLogin = FirebaseAuthservice().isLogin();

              if (isLogin) {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return TimeLineScreen();
                  },
                ), (r) => false);
              } else {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return LoginScreen();
                    },
                  ),
                  (r) => false,
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
          }
        },
      ),
    );
  }
}
