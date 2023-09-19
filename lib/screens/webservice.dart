import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/DataNewsModel.dart';
import '../models/articles.dart';
import 'models.dart';

class News{
  List<List> news = [];

  Future<void>fetchArticle() async {
    const url =
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey={7111c2ed767b4793ac53e55039a9455b}';

    var response = await http.get(url as Uri);
    var data = jsonDecode(response.body);

    if(data == 200){
      data['articles'].forEach((e){

        if(e['urlToImage'] != null) {
          Articles articles = Articles(
              urlToImage : e['urlToImage'],
              publishedAt: e['publishedAt'],
              author: e['author'],
              title: e['title'],
              content: e['content']
          );
          news.add(articles as List);
        }

      });
    }
  }
}