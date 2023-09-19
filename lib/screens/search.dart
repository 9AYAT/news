import 'dart:ffi';

import 'package:flutter/material.dart';

class SearchArticle extends SearchDelegate<String>{
final List<String>name;

SearchArticle(this.name);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: (){query='';

    })];


  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow, progress: transitionAnimation, color: Colors.grey), onPressed: (){
      close(context, '');
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    final suggestions=  name.where((articles){
      return name.contains(query.toLowerCase());
    });
    return ListView.builder(itemCount: suggestions.length,
        itemBuilder: (BuildContext context,int index){
      return ListTile(
          title: Text(suggestions.elementAt(index)),
      onTap: (){
          //  result=suggestions.elementAt(index);
            close(context, '');
      },
      );});
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    //throw UnimplementedError();
  final suggestions=  name.where((articles){
      return name.contains(query.toLowerCase());
    });
  return ListView.builder(itemCount: suggestions.length,
      itemBuilder: (BuildContext context,int index){
    return ListTile(
      title: Text(suggestions.elementAt(index)),
      onTap: (){
        query=suggestions.elementAt(index);
      },
    );

  });
  }

 // @override
 // Widget buildResults(BuildContext context) {
  //  throw UnimplementedError();
 // }

 // @override
  //Widget buildSuggestions(BuildContext context) {
  //  throw UnimplementedError();
  //}

}