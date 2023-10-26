import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/catagorey_news_model.dart';
import 'dart:convert';
import 'package:news_app/models/news_channels_headlines_model.dart';

class NewsRepository {
  Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlinesApi(channelName) async {
    String url =
        'https://newsapi.org/v2/top-headlines?sources=$channelName&apiKey=a5c7243f7e2f43389c4492e4016fc78d';
    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
        return NewsChannelsHeadlinesModel.fromJson(body);
    }
    throw Exception('Error');
  }

  Future<CatagoreyNewsModel> fetchCategoreyNewsAPI(categorey) async {
    String url =
        'https://newsapi.org/v2/everything?q=$categorey&apiKey=a5c7243f7e2f43389c4492e4016fc78d';
    final response = await http.get(Uri.parse(url));
    // if (kDebugMode) {
    //   print(response.body);
    // }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return CatagoreyNewsModel.fromJson(body);
    }
    throw Exception('Error');
  }

}
