import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/DataNewsModel.dart';
import 'package:news/models/categorie%20mode.dart';
import 'package:news/screens/categories.dart';
import 'package:news/screens/drawer.dart';
import 'package:news/screens/newsscreen.dart';
import 'package:news/screens/search.dart';
import 'package:news/screens/setting.dart';
import 'package:news/screens/source%20item.dart';
import 'package:news/screens/sources%20title.dart';
import 'package:news/shared/network/remote/api%20manger.dart';
class HomeScreen extends StatefulWidget {
  static const  String routeName="ghhh";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int index=0;

  get articles => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(
onDrawerClicked
    ),
      appBar: AppBar(
          title: Text("NewsApp",style: GoogleFonts.elMessiri(fontWeight: FontWeight.w100),),
      actions: [
        IconButton( icon:Icon(Icons.search),onPressed: ()async{final result=await showSearch(context: context,
          delegate:SearchArticle(name));
          print(result);
          },)
      ],
      backgroundColor: Color(0xFF39A552),
      centerTitle: true,
      shape:OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)
          ),
        borderSide: BorderSide(color: Colors.transparent)
      )),
      body:model==null? CategoriesScreen(onCategoryClick):NewsScreen(model!)
    );
  }
  CategoryModel? model=null;
  onCategoryClick(categoryModel){
    model=categoryModel;
    setState(() {
    });
  }
  onDrawerClicked(num){
    if(num==drawer.Categories){
      model=null;
      Navigator.pop(context);
      setState(() {

      });
    }
    else if(num==drawer.Setting){
      Navigator.pushNamed(context, Setting.routeName);
    }
  }
  static const name=["jjj"];


}
