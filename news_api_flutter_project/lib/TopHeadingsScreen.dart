import 'package:flutter/material.dart';
import 'package:news_api_flutter_project/NewsAPI.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TopHeadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: FutureBuilder(
        future: NewsAPI().getTopHeadings(),
        builder: (BuildContext context, AsyncSnapshot<http.Response> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Loading Top Headings"),
                  SizedBox(
                    height: 20,
                  ),
                  CircularProgressIndicator(),
                ],
              ));
              break;

            case ConnectionState.done:
              if (snapshot.hasData) {
                var response = snapshot.data;
                var responseBody = response.body;
                Map<String, dynamic> responseJSON = jsonDecode(responseBody);
                var statusCode = responseJSON["status"];
                var totalResults = responseJSON["totalResults"];
                var articlesArray = responseJSON["articles"];

                print(responseBody);

                return ListView.builder(
                  itemCount: totalResults,
                  itemBuilder: (BuildContext context, int index) {
                    Map<String, dynamic> newsObject = articlesArray[index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(newsObject["source"]["name"]),
                              trailing: Text("2021-01-09T07:29:00Z"),
                            ),
                            Image.network(newsObject["urlToImage"] == null
                                ? ""
                                : newsObject["urlToImage"]),
                            ListTile(title: Text(newsObject["title"]))
                          ],
                        ),
                      ),
                    );
                  },
                );
              }

              break;
          }
        },
      ),
    );
  }
}
