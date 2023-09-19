import 'dart:ui';

class CategoryModel{
  String id;
  String name;
  String image;
  Color color;  
  CategoryModel(this.name,this.id,this.image,this.color);
 static List<CategoryModel>getCategories(){
    return[
      CategoryModel("business","Business","assets/images/business.png",Color(0xFFC91C22)),
      CategoryModel("entertainment","Entrainment","assets/images/politics.png",Color(0xFF003E90)),
      CategoryModel("general","General","assets/images/enviroment.png",Color(0xFF4882CF)),
      CategoryModel("health","health","assets/images/health.png",Color(0xFFED1E79)),
      CategoryModel("science","Science","assets/images/science.png",Color(0xFFF2D352)),
      CategoryModel("sports","Sports","assets/images/sports.png",Color(0xFFC91C22)),
      CategoryModel("technology","Technology","assets/images/business.png",Color(0xFF003E90)),
    ];
  }
}
