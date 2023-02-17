
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/fyp/model/fypModeClass.dart';
import 'package:pak_programmer/module/fyp/servies/fyp_servies.dart';
import 'package:pak_programmer/module/language_detailpage.dart/model/language_detailMode.dart';
import 'package:pak_programmer/module/language_detailpage.dart/services/language_detail_servies.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/module/project/serviece/service.dart';


class GetLanugaeDetailController extends GetxController{
var isLoading=true.obs;
  // var productlist=<StudentFindTutorsModelClass>[].obs;
  var productlist=List<LanguageDetailModelClass>.empty().obs;
  var connectionStatus=0.obs;
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onInit() {
    // TODO: implement onInit
   
    super.onInit();
    fetchProduct();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    
  }
  void fetchProduct() async{
    try {
      isLoading(true);
      // isLoading.value=true;
      var products=await GetLanguageCategoryServices.getFindtutors();
       print("Qaiser data api : ${products}");
      if(products!=null){
        productlist.assignAll(products);
        print("Qaiser  : ${productlist}");
      }
    } catch(e){
        print("Qaiser data api error: ${e.toString()}");
    } finally {
      isLoading(false);
      
    }
  }
}
