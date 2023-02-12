import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/model/home_language_modelClass.dart';
import 'package:pak_programmer/module/bottom_nav_home/servies/home_language_api_servies.dart';

// class HomeGetLanguageController extends GetxController{


//   RxBool isLoading=false.obs;
//   final get_course_ProductList=List<HomeLanguageModelClass>.empty().obs;

// @override
//   void onInit() {
//     // TODO: implement onInit
//     fetchGetlanguageData();
    
//     super.onInit();
//   }
// @override
//   void onClose() {
//     // TODO: implement onClose
//     super.onClose();
//   }
//  void fetchGetlanguageData() async{
//    try {
//       isLoading(true);
//     var data= await HomeLanguageServies.fetchHomeLanguageData();
//     if(data!=null){
//       get_course_ProductList.assignAll(data);
//       print(get_course_ProductList);
     
//     }
//    } finally {
//       isLoading(false);
//    }
//   }
  
// }


import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/coures_outline/model/coursesOutline.dart';
import 'package:pak_programmer/module/coures_outline/model/find_tutorModelClass.dart';
import 'package:pak_programmer/module/coures_outline/serviece/service.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/module/project/serviece/service.dart';


class HomeGetLanguageController extends GetxController{
var isLoading=true.obs;
  // var productlist=<StudentFindTutorsModelClass>[].obs;
  var get_course_ProductList=List<HomeLanguageModelClass>.empty().obs;
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
   
    // initConnectivity();
    // _connectivitySubscription=_connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
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
      var products=await HomeLanguageServies.fetchHomeLanguageData();
      if(products!=null){
        get_course_ProductList.assignAll(products);
      }
    } finally {
      isLoading(false);
      
    }
  }
}