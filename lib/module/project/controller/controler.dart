
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/module/project/serviece/service.dart';


class ProjectListController extends GetxController{
var isLoading=true.obs;
  // var productlist=<StudentFindTutorsModelClass>[].obs;
  var productlist=List<ProjectListModelClass>.empty().obs;
  var connectionStatus=0.obs;
  // final Connectivity _connectivity=Connectivity();
 
  // late StreamSubscription<ConnectivityResult> _connectivitySubscription;
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
      var products=await StudentFindTutorsServies.getFindtutors();
      if(products!=null){
        productlist.assignAll(products);
      }
    } finally {
      isLoading(false);
      
    }
  }
}
