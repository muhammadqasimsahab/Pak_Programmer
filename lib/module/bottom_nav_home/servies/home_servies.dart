import 'package:pak_programmer/module/bottom_nav_home/model/course_model.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/util/api.dart';
class HomeServiesClass{

  Future<List<HomeModelClass>?> fetchHomeCoursesData() async{
    final response = await http.get(Uri.parse(AppConstants.base_url+AppConstants.get_course));
    if(response.statusCode==200){
      var jsonResponse=response.body;
      return homeModelClassFromJson(jsonResponse);
    }
  }
}