import 'package:news_app/models/catagorey_news_model.dart';
import 'package:news_app/repository/news_repository.dart';

import '../models/news_channels_headlines_model.dart';

    class NewsViewModel {
        final _rep = NewsRepository();

      Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlinesApi(String channelName) {
        final response = _rep.fetchNewsChannelsHeadlinesApi(channelName);
        return response;
      }

      Future<CatagoreyNewsModel> fetchCategoreyNewsAPI(String categorey) {
        final response = _rep.fetchCategoreyNewsAPI(categorey);
        return response;
      }

    }

