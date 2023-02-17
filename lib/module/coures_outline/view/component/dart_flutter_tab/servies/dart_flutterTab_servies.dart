
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/coures_outline/view/component/dart_flutter_tab/model/dart_flutterTab_modelClass.dart';
import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs_tab/model/whychoose_us_modelClass.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/util/api.dart';

class DartAndFlutterTabServices{
  static var client=http.Client();
  static Future<List<GetCourseOutlineModelClass>?> getFindtutors() async{
    var response=await client.get(Uri.parse(AppConstants.base_url+AppConstants.course_outline_url));
    print(response.body);
     var jsonString=response.body;
    if(response.statusCode==200){
      return getCourseOutlineModelClassFromJson(jsonString);
    }
    //  return studentFindTutorsModelClassFromJson(jsonString);
  }
}