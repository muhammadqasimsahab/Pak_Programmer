
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/fyp/model/model.dart';
import 'package:pak_programmer/module/fyp/servies/servies.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/module/project/serviece/service.dart';


class TeacherFindTutorsController extends GetxController{
var isLoading=false.obs;
  // var productlist=<StudentFindTutorsModelClass>[].obs;
  var productlist=List<ExpansionListTileModel>.empty().obs;
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
      var products=await ExpandableListViewServicesClass.getExpandableData();
      if(products!=null){
        productlist.assignAll(products);
      }
    } finally {
      isLoading(false);
      
    }
  }
}
