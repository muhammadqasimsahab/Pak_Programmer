
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:pak_programmer/module/coures_outline/model/coursesOutline.dart';
// // import 'package:pak_programmer/module/fyp/model/model.dart';
// import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
// import 'package:pak_programmer/util/api.dart';

// // class CoursesOutlineServiesClasss{
// //   // static var client=http.Client();
// //   static Future<List<CoursesModelClass>?> getCoursesOutlineData() async{
// //     var response=await http.get(Uri.parse(AppConstants.base_url+AppConstants.course_outline));
// //     // print(response.body);
// //      var jsonString=response.body;
// //     if(response.statusCode==200){
     
// //       return coursesModelClassFromJson(jsonString);
// //     }
// //     //  return studentFindTutorsModelClassFromJson(jsonString);
// //   }
// // }
// class CoursesOutlineServiesClasss{

//   Future<List<CoursesModelClass>?> getCoursesOutlineData() async{
//     final response=await http.get(Uri.parse(AppConstants.base_url+AppConstants.course_outline));
//     if(response.statusCode==200){
//       var jsonString=response.body;
//       return coursesModelClassFromJson(jsonString);
//     }
//   }
// }