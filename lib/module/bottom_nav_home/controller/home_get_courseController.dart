import 'package:get/state_manager.dart';
import 'package:pak_programmer/module/bottom_nav_home/model/home_model.dart';
import 'package:pak_programmer/module/bottom_nav_home/servies/home_servies.dart';

class HomeGetCoursesController extends GetxController{

  RxBool isLoading=false.obs;
  final get_course_ProductList=List<HomeModelClass>.empty().obs;

@override
  void onInit() {
    // TODO: implement onInit
    fetchGetCourses();
    
    super.onInit();
  }
@override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
 void fetchGetCourses() async{
   try {
      isLoading(true);
    var data= await HomeServiesClass().fetchHomeCoursesData();
    if(data!=null){
      get_course_ProductList.assignAll(data);
      print(get_course_ProductList);
     
    }
   } finally {
      isLoading(false);
   }
  }
}