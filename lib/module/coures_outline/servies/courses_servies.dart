
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/coures_outline/model/coursesOutline.dart';
import 'package:pak_programmer/module/fyp/model/model.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/util/api.dart';

class CoursesOutlineServiesClasss{
  static var client=http.Client();
  static Future<List<CoursesModelClass>?> getCoursesOutlineData() async{
    var response=await client.get(Uri.parse("http://192.168.10.8:8000/api/get_course_outline/1"));
    print(response.body);
     var jsonString=response.body;
    if(response.statusCode==200){
     
      return coursesModelClassFromJson(jsonString);
    }
    //  return studentFindTutorsModelClassFromJson(jsonString);
  }
}