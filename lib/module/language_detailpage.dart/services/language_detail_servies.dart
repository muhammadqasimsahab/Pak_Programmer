
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/fyp/model/fypModeClass.dart';
import 'package:pak_programmer/module/language_detailpage.dart/model/language_detailMode.dart';

class GetLanguageCategoryServices{
  static var client=http.Client();
  static Future<List<LanguageDetailModelClass>?> getFindtutors() async{
    var response=await http.get(Uri.parse("http://192.168.10.13:8000/api/get_language_category/2"));
    print(response.body);
     var jsonString=response.body.toString();
    if(response.statusCode==200){
      return languageDetailModelClassFromJson(jsonString);
    }
    //  return studentFindTutorsModelClassFromJson(jsonString);
  }
}