import 'package:flutter/cupertino.dart';
import 'package:news/screens/webservice.dart';

import '../models/DataNewsModel.dart';
import '../models/articles.dart';


  Widget buildResults(BuildContext context) {
    var news;
    return FutureBuilder(
        future: news.fetchArticle,
        builder: (context, AsyncSnapshot<List<Articles>> snapshot) {
          if(snapshot != null)
            return Text("No articles found!");
          else {
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, pos) {

                }
            );
          }
        }
    );
  }
