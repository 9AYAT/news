import 'package:flutter/material.dart';
import 'package:news/models/categorie%20mode.dart';
import 'package:news/screens/category%20item.dart';

class CategoriesScreen extends StatelessWidget {
  static const String routeName="hhhh";
    var categories=CategoryModel.getCategories();
    Function onCategoryClick;
    CategoriesScreen(this.onCategoryClick);
    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      mainAxisSpacing:12,crossAxisSpacing: 12 ),
          itemBuilder: (context,index){
        return InkWell(onTap: (){
          onCategoryClick(categories[index]);
        },

            child: CategoryItem(categories[index],index));
          }),
    );
  }
}
