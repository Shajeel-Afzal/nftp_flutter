import 'package:news_api_flutter_project/Constants.dart';
import 'package:http/http.dart' as http;

class NewsAPI {

  final API_URL = "https://newsapi.org/v2/top-headlines?country=us&apiKey=" + Constants.kNewsAPIKey;

  Future<http.Response> getTopHeadings() async {
    // TODO: 1- Request the News API to send data
    return http.get(API_URL);
  }

}