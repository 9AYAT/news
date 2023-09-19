import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/models/categorie%20mode.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel categoryModel;
 int index;

  CategoryItem(this.categoryModel,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: categoryModel.color,borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft:Radius.circular(25),
      bottomLeft: index.isEven?Radius.circular(25):Radius.zero,
      bottomRight:index.isOdd?Radius.circular(25):Radius.zero )),
      child: Column(
        children: [
          Expanded(child: Image.asset(categoryModel.image)),
          Text(categoryModel.name,style: GoogleFonts.elMessiri(fontSize: 24,color: Colors.white),)
        ],
      ),
    );
  }
}
