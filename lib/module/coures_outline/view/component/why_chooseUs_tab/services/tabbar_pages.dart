
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs_tab/model/whychoose_us_modelClass.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/util/api.dart';

class WhyChooseUsServiesClass{
  static var client=http.Client();
  static Future<List<WhyChooseUsModelClass>?> getFindtutors() async{
    var response=await client.get(Uri.parse(AppConstants.base_url_local_url+AppConstants.why_choose_us_url));
    print(response.body);
     var jsonString=response.body;
    if(response.statusCode==200){
      return whyChooseUsModelClassFromJson(jsonString);
    }
    //  return studentFindTutorsModelClassFromJson(jsonString);
  }
}