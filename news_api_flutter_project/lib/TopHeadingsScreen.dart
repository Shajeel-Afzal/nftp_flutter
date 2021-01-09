import 'package:flutter/material.dart';
import 'package:news_api_flutter_project/NewsAPI.dart';
import 'package:http/http.dart' as http;

class TopHeadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: FutureBuilder(
        future: NewsAPI().getTopHeadings(),
        builder: (BuildContext context, AsyncSnapshot<http.Response> snapshot) {
          switch(snapshot.connectionState){

            case ConnectionState.active:
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Loading Top Headings"),
                  SizedBox(height: 20,),
                  CircularProgressIndicator(),
                ],
              ));
              break;

            case ConnectionState.done:
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        children: [
                          ListTile(title: Text("BBC News"), trailing: Text("2021-01-09T07:29:00Z"),),
                          Image.network("https://ichef.bbci.co.uk/news/1024/branded_news/32E6/production/_116403031_065099522-2.jpg"),
                          ListTile(title: Text("Trump riots: Democrats plan to introduce article of impeachment - BBC News"))
                        ],
                      ),
                    ),
                  );
                },
              );
              break;
          }
        },

      ),
    );
  }
}


