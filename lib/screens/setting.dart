import 'package:flutter/material.dart';
import 'package:news/screens/MYPROVIDER.dart';
import 'package:provider/provider.dart';

import '../buttonsheet.dart';
import '../buttonsheettheme.dart';

class Setting extends StatelessWidget {
  static const String routeName="vgg";

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Material(
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      Text("Language"),
      InkWell(onTap: (){
        showButtonSheetLanguage(context);},
        child: Container(margin: EdgeInsets.all(8),
          width: double.infinity,
          padding:EdgeInsets.all(12),
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Theme.of(context).primaryColor)) ,
          child: Text(pro.language=='ar'?'Arabic':'English'),
        ),
      ),SizedBox(height: 25,), Text("Theme"),
      InkWell(onTap: (){
        showButtonSheetTheme(context);
      },
        child: Container(margin: EdgeInsets.all(8),
          width: double.infinity,
          padding:EdgeInsets.all(12),
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Theme.of(context).primaryColor)) ,
          child: Text("dark"),
        ),
      )],),),
    );}
  showButtonSheetLanguage(BuildContext context){
    return showBottomSheet(context: context, builder: (context){
      return Button();
    },);
  }
  showButtonSheetTheme(BuildContext context){
    return showBottomSheet(context:context, builder:(context){
      return ButtonSheetTheme();
    },);
  }
}
