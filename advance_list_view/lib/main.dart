import 'package:advance_list_view/PersonDetailScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {

  List<String> names = ["Talha", "Muhammad Imran", "Husnain", "Qaiser", "Mohsin", "Faiza"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: names.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.black,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return PersonDetailScreen();
              },),);
            },
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward_sharp),
            title: Text(names[index]),
          );
        },

      ),
    );
  }
}

