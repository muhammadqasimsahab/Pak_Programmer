import 'package:http/http.dart ' as http;
import 'package:pak_programmer/module/bottom_nav_home/model/home_top_banner.dart';
import 'package:pak_programmer/util/api.dart';

class HomeTopBanner {

   Future<List<HomeTopBannerModeClass>?> fetchHomeCoursesData() async{
    final response = await http.get(Uri.parse(AppConstants.base_url+AppConstants.get_banner));
    if(response.statusCode==200){
      var jsonResponse=response.body;
      return homeTopBannerModeClassFromJson(jsonResponse);
    }
  }
}