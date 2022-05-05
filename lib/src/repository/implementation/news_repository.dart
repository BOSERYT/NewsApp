import 'package:News/src/data_provider/news_provider.dart';
import 'package:News/src/model/article.dart';
import 'package:News/src/repository/news_repository.dart';

class NewsRepository extends NewsRepositoryBase {
  final NewsProvider _provider;

  NewsRepository(this._provider);

  @override
  Future<List<Article>> topHeadlines(String country) =>
      _provider.topHeadlines(country);
}
