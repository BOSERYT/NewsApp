import 'package:News/src/model/article.dart';

abstract class NewsRepositoryBase {
  Future<List<Article>> topHeadlines(String country);
}
