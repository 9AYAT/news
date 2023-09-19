import 'package:flutter/material.dart';
import 'package:news/screens/news%20item.dart';
import 'package:news/screens/source%20item.dart';
import 'package:news/shared/network/remote/api%20manger.dart';
import '../models/DataNewsModel.dart';
import '../models/SourcesResponse.dart';
class SourcesTitle extends StatefulWidget {
  List<Sources>sources;


  SourcesTitle(this.sources);
  @override
  State<SourcesTitle> createState() => _SourcesTitleState();
}

class _SourcesTitleState extends State<SourcesTitle> {
  late List<Sources>sources;
int index=0;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: TabBar(onTap: (value){
          index=value;
          setState(() {

          });
          },
            indicatorColor: Colors.transparent,
            isScrollable: true,
            tabs:widget.sources.map((e) {
              return SourceItem(e.name??"",widget.sources.indexOf(e)==index);
            }) .toList(),
          ),
        ),
        FutureBuilder<NewsDataModel>(
            future: ApiManager.getNewsData(widget.sources[index].id??""),
    builder: (context,snapshot)
    {
    if(snapshot.connectionState==ConnectionState.waiting){
    return Center(child: CircularProgressIndicator(),);
    }
    if(snapshot.hasError){
    return Center(child: Text("Something went wrong"));
    }
    var articles=snapshot.data?.articles??[];
    return Expanded(
      child: ListView.builder(itemBuilder: (context,index){
      return NewsItem(articles[index]);

      },
      itemCount: articles.length),
    );
    })],
    );
  }
}
