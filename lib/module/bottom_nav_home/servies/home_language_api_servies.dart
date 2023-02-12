import 'package:pak_programmer/module/bottom_nav_home/model/home_language_modelClass.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/util/api.dart';


class HomeLanguageServies{
  static var client=http.Client();
  static Future<List<HomeLanguageModelClass>?> fetchHomeLanguageData() async{
    // var response=await client.get(Uri.parse(AppConstants.base_url+AppConstants.course_outline));
    var response=await client.get(Uri.parse(AppConstants.base_url+AppConstants.get_language));
    print(response.body);
     var jsonString=response.body;
    if(response.statusCode==200){
     
      return homeLanguageModelClassFromJson(jsonString);
    }
  }
}