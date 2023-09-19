//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news/screens/MYPROVIDER.dart';
import 'package:news/screens/categories.dart';
import 'package:news/screens/homescreen.dart';
//import 'package:news/screens/news%20screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news/screens/setting.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(create:
  (context)=>MyProvider()
  ,
      child:
      const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
   // var routeName;
    var routeName;
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale(provider.language),
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      debugShowCheckedModeBanner: false,
      routes: {
        Setting.routeName:(context)=>Setting(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        CategoriesScreen.routeName:(context)=>CategoriesScreen(CategoriesScreen as Function)},
      initialRoute:HomeScreen.routeName ,
    );}}