
import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/module/project/serviece/service.dart';


class ProjectListController extends GetxController{
var isLoading=false.obs;
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
      var products=await StudentFindTutorsServies.getFindtutors();
      if(products!=null){
        productlist.assignAll(products);
      }
    } finally {
      isLoading(false);
      
    }
  }
}

// import 'dart:async';
// import 'package:get/get.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';

// class TeacherFindTutorsController extends GetxController with StateMixin<List<FindTutorsModelClass>> {
//   TvShowRepository? tvShowRepository;
//   TeacherFindTutorsController({this.tvShowRepository});
//   List<FindTutorsModelClass> lstTvShows = [];

//   var connectionStatus = 0.obs;

//   //bool isConnected=await InternetConnectionChecker().hasConnection;
//   late StreamSubscription<InternetConnectionStatus> _listener;

//   @override
//   void onInit() {
//     super.onInit();
//     _listener = InternetConnectionChecker()
//         .onStatusChange
//         .listen((InternetConnectionStatus status) {
//       switch (status) {
//         case InternetConnectionStatus.connected:
//           connectionStatus.value = 1;
//           break;
//         case InternetConnectionStatus.disconnected:
//           connectionStatus.value = 0;
//           break;
//       }
//     });
//   }

//   @override
//   void onReady() {
//     super.onReady();
//     getTvShow();
//   }

//   @override
//   void onClose() {
//     _listener.cancel();
//   }

//   getTvShow() async {
//     print("called");
//     try {
//       change(null, status: RxStatus.loading());
//       tvShowRepository?.getTvShow("1").then((value) {
//         lstTvShows.clear();
//         lstTvShows.addAll(value.tvShows!);
//         change(lstTvShows, status: RxStatus.success());
//       }, onError: (err) {
//         change(null, status: RxStatus.error(err.toString()));
//       });
//     } catch (exception) {
//       change(null, status: RxStatus.error(exception.toString()));
//     }
//   }
// }
