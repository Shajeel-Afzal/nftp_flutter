import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(children: [
        Text("Dubai"),
        Image.network(
            'https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/New-Years-Eve-in-Dubai-Cover-2.jpg'),
        Text("Pakistan"),
        Image.asset('images/maxresdefault.jpg'),
        Text("New Zealand"),
        Image.network(
            'https://resize.indiatvnews.com/en/resize/newbucket/715_-/2020/12/new-year-celebrations-new-zealand-1609419098.jpg'),
      ]),
    );
  }
}
