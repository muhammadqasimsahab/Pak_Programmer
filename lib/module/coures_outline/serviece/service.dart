
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/coures_outline/model/coursesOutline.dart';
import 'package:pak_programmer/module/coures_outline/model/find_tutorModelClass.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/util/api.dart';

class CourseOutlineServiesClass{
  static var client=http.Client();
  static Future<List<CoursesModelClass>?> getFindtutors() async{
    // var response=await client.get(Uri.parse(AppConstants.base_url+AppConstants.course_outline));
    var response=await client.get(Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"));
    print(response.body);
     var jsonString=response.body;
    if(response.statusCode==200){
     
      return coursesModelClassFromJson(jsonString);
    }
    //  return studentFindTutorsModelClassFromJson(jsonString);
  }
}