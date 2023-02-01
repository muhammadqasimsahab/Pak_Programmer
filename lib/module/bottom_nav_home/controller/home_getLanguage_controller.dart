import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/model/home_language_modelClass.dart';
import 'package:pak_programmer/module/bottom_nav_home/servies/home_language_api_servies.dart';

class HomeGetLanguageController extends GetxController{


  RxBool isLoading=false.obs;
  final get_course_ProductList=List<HomeLanguageModelClass>.empty().obs;

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
    var data= await HomeLanguageServies().fetchHomeLanguageData();
    if(data!=null){
      get_course_ProductList.assignAll(data);
      print(get_course_ProductList);
     
    }
   } finally {
      isLoading(false);
   }
  }
  
}