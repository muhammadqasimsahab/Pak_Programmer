
// import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// import 'package:pak_programmer/module/fyp/model/fypModeClass.dart';
import 'package:pak_programmer/module/language_detailpage.dart/model/get_language_heading_modelClass.dart';
import 'package:pak_programmer/module/language_detailpage.dart/model/Basic_detail_modelClass.dart';
import 'package:pak_programmer/module/language_detailpage.dart/view/BasicDetail.dart';
import 'package:pak_programmer/module/language_detailpage.dart/view/language_detail_view.dart';
// import 'package:pak_programmer/module/language_detailpage.dart/model/language_detailMode.dart';
// import 'package:pak_programmer/module/language_detailpage.dart/model/tester_model.dart';
// import 'package:pak_programmer/module/language_detailpage.dart/view/language_detail_view.dart';
import 'package:pak_programmer/util/api.dart';

class BasicDetailServices{
  static var client=http.Client();
  static Future<List<BasicDetailModelClass>?> getFindtutors() async{
    // var response=await http.get(Uri.parse(AppConstants.base_url_local_url+AppConstants.language_detail_category+lang_title.toString()));
    var response=await http.get(Uri.parse(AppConstants.base_url+AppConstants.Basic_detail+basic_subHeading_item_id.toString()));
    // var response=await http.get(Uri.parse("http://pakprogrammers.com/pakprogrammer/api/get_language_heading/2/2"));
    // print(response.body);
    var jsonString=response.body.toString();
    if(response.statusCode==200){
      return basicDetailModelClassFromJson(jsonString);
    }
    //  return studentFindTutorsModelClassFromJson(jsonString);
  }
}