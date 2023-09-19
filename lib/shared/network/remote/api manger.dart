import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/models/DataNewsModel.dart';
import 'package:news/shared/components/constants.dart';
//import 'package:news/models/sourcesmodel.dart';
import '../../../models/SourcesResponse.dart';
class ApiManager{
  static Future<SourcesResponse> getSources(String categoryId)async{
    Uri url=Uri.https( "newsapi.org","v2/top-headlines/sources",{"apiKey":"7111c2ed767b4793ac53e55039a9455b",
    "category":categoryId});
 var response=await http.get(url);
 print(response.body);
 var jsonData=jsonDecode(response.body);
 SourcesResponse sourcesResponse=SourcesResponse.fromJson(jsonData);
 return sourcesResponse;
  }
 static Future<NewsDataModel> getNewsData(String sourceId)async{
    Uri url=Uri.https(Constants.BASE_URL,"v2/everything",{"apiKey":Constants.Api_Key,"Sources":sourceId});
 var response= await http.get(url);
 var jsonData=jsonDecode(response.body);
 NewsDataModel newsDataModel=NewsDataModel.fromJson(jsonData);
 return newsDataModel;
  }

}
