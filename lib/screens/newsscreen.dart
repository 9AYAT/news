import 'package:flutter/material.dart';
import 'package:news/models/categorie%20mode.dart';
import 'package:news/screens/sources%20title.dart';
import '../models/SourcesResponse.dart';
import '../shared/network/remote/api manger.dart';
class NewsScreen extends StatelessWidget {
  CategoryModel categoryModel;
  NewsScreen(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
        future: ApiManager.getSources(categoryModel.id), builder: (context,snapshot){
      if(snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(),);
      }
      if(snapshot.hasError){
        return Center(child: Text("Something went wrong"));
      }
      var sources=snapshot.data?.sources??[];
      return  SourcesTitle(sources);

    });
  }
}
