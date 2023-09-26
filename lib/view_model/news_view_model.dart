import 'package:news_app/repository/news_repository.dart';

import '../models/news_channels_headlines_model.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlinesApi() {
    final response = _rep.fetchNewsChannelsHeadlinesApi();
    return response;
  }
}
