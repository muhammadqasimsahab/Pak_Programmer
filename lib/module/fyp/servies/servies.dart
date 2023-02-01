
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/fyp/model/model.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/util/api.dart';

class ExpandableListViewServicesClass{
  static var client=http.Client();
  static Future<List<ExpansionListTileModel>?> getExpandableData() async{
    var response=await client.get(Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"));
    print(response.body);
     var jsonString=response.body;
    if(response.statusCode==200){
     
      return expansionListTileModelFromJson(jsonString);
    }
    //  return studentFindTutorsModelClassFromJson(jsonString);
  }
}