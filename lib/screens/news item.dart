import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/DataNewsModel.dart';

class NewsItem extends StatelessWidget {
  Articles articles;
NewsItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
       borderRadius: BorderRadius.only(topLeft:Radius.circular(18),topRight:Radius.circular(18)),
              child: Image.network(articles.urlToImage??"",height: 200,
              width: double.infinity,fit: BoxFit.fill,),),
          SizedBox(height: 8,),
          Text(
            articles.title??"",maxLines:1,
            style: GoogleFonts.aBeeZee(fontSize: 18,fontWeight: FontWeight.bold),),
            Text(articles.description??"",maxLines: 2,
              style: GoogleFonts.quicksand(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.grey.shade800),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(articles.author??"",style: GoogleFonts.elMessiri(fontSize: 12,fontWeight: FontWeight.w300),),
        Text(articles.publishedAt?.substring(0,10)??"")],
            )
          ],
        ),
      ),
    );
  }
}