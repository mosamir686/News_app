import 'package:dio/dio.dart';
import 'package:news_app/models/articlesModel.dart';

class NewsServies {
  final Dio dio;
  NewsServies.NewsServices(this.dio);
  Future<List<ArticleModel>> getTopHeadlines({required String Category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=8cbfe7522ae64b23b2b6fae585f7b6b0&category=$Category',
      );
      Map<String, dynamic> jasonData = response.data;

      List<dynamic> articles = jasonData['articles'];

      List<ArticleModel> articleslist = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subTitle: article['description']);
        articleslist.add(articleModel);
      }
      return articleslist;
      // ignore: empty_catches
    } catch (e) {
      return [];
    }
  }
}
