
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/fyp/model/fypModeClass.dart';

class FypServiesClasss{
  static var client=http.Client();
  static Future<List<FypModelClass>?> getFindtutors() async{
    var response=await http.get(Uri.parse("http://192.168.10.13:8000/api/fyp"));
    print(response.body);
     var jsonString=response.body.toString();
    if(response.statusCode==200){
      return fypModelClassFromJson(jsonString);
    }
    //  return studentFindTutorsModelClassFromJson(jsonString);
  }
}