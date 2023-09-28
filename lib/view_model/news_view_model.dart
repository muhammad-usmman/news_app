import 'package:news_app/repository/news_repository.dart';

import '../models/news_channels_headlines_model.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlinesApi(String channelName) {
    final response = _rep.fetchNewsChannelsHeadlinesApi(channelName);
    return response;
  }
}
