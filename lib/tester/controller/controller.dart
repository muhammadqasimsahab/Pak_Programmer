import 'package:get/get.dart';
import 'package:pak_programmer/tester/model/model.dart';
import 'package:pak_programmer/tester/servies/servies.dart';

class TesterController extends GetxController{

  RxBool isLoading=true.obs;
  var productList=List<ProductModel>.empty().obs;


  @override
  void onInit() {
    // TODO: implement onInit
    fetchData();
    super.onInit();
  }
fetchData()async{
  try {
    isLoading(true);
    var product=await apiResponse.fetchData();
    if(product!=null){
      productList.assignAll(product);
    }else{
      isLoading(false);
    }
  } catch (e) {
    print(e.toString());
  }
}
}