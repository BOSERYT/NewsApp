import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:News/src/model/article.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailScreen extends StatelessWidget {
  static Widget create(Object article) =>
      NewsDetailScreen(article: article as Article);

  final Article article;

  const NewsDetailScreen({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias Internacionales'),
      ),
      body: Column(
        children: [
          article.urlToImage == null
              ? Container(color: Colors.red, height: 400)
              : CachedNetworkImage(
                  imageUrl: article.urlToImage!,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
          Text(
            '${article.title}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          SizedBox(height: 20),
          Text(
            '${article.content}',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => launch(article.url),
            child: Text(
              'Ver mas',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
