import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/model/home_language_modelClass.dart';
import 'package:pak_programmer/module/bottom_nav_home/model/home_top_banner.dart';
import 'package:pak_programmer/module/bottom_nav_home/servies/home_language_api_servies.dart';
import 'package:pak_programmer/module/bottom_nav_home/servies/home_top_banner.dart';

class HomeTopBannerController extends GetxController{


var isLoading=true.obs;
  final get_top_bannerList=List<HomeTopBannerModeClass>.empty().obs;

@override
  void onInit() {
    // TODO: implement onInit
    fetchGetlanguageData();
    
    super.onInit();
  }
@override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
 void fetchGetlanguageData() async{
   try {
      isLoading(true);
    var data= await HomeTopBanner().fetchHomeCoursesData();
    if(data!=null){
      get_top_bannerList.assignAll(data);
      
     
    }
   } finally {
      isLoading(false);
   }
  }
  
}