import 'package:pak_programmer/module/bottom_nav_home/model/home_language_modelClass.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/util/api.dart';
class HomeLanguageServies{

  Future<List<HomeLanguageModelClass>?> fetchHomeLanguageData() async{
    final response=await http.get(Uri.parse(AppConstants.base_url+AppConstants.get_language));
    if(response.statusCode==200){
      var jsonString=response.body;
      return homeLanguageModelClassFromJson(jsonString);
    }
  }
}