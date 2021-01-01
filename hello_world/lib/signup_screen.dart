import 'package:flutter/material.dart';

class SignupScreenView extends StatefulWidget {
  @override
  _SignupScreenViewState createState() => _SignupScreenViewState();
}

class _SignupScreenViewState extends State<SignupScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Screen"),
      ),
    );
  }
}
