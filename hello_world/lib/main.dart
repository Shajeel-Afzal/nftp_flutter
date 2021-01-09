import 'package:flutter/material.dart';
import 'package:hello_world/quiz_option.dart';
import 'package:hello_world/send_data_to_second_screen.dart';
import 'package:hello_world/signup_screen.dart';

import 'home.dart';

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
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: XdDemo(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final emailTextEditingController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Screen")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login Now"),
            TextField(
              controller: emailTextEditingController,
              decoration: InputDecoration(labelText: "Enter your Email"),
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(labelText: "Enter your password"),
            ),
            Center(
              child: Row(children: [
                RaisedButton(
                  child: Text("Login"),
                  onPressed: () {
                    print(emailTextEditingController.text);
                    print(passwordController.text);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return HomeScreen();
                        },
                      ),
                    );

                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(builder: (BuildContext builder) {
                    //     return HomeScreen();
                    //   }),
                    // );

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (BuildContext builder) {
                    //     return HomeScreen();
                    //   }),
                    // );
                    // Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  child: Text("Signup"),
                  onPressed: () {
                    print(emailTextEditingController.text);
                    print(passwordController.text);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return DemoWidget();
                      }),
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
