import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/coures_outline/view/component/dart_flutter_tab/model/dart_flutterTab_modelClass.dart';
import 'package:pak_programmer/module/coures_outline/view/component/dart_flutter_tab/servies/dart_flutterTab_servies.dart';


class DartAndFlutterTabController extends GetxController {
  var isLoading = true.obs;
  var productlist = List<GetCourseOutlineModelClass>.empty().obs;
  var connectionStatus = 0.obs;
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

  void fetchProduct() async {
    try {
      isLoading(true);
      // isLoading.value=true;
      var products = await DartAndFlutterTabServices.getFindtutors();
      if (products != null) {
        productlist.assignAll(products);
      }
    } catch (e) {
      print("error aya he . ${e.toString()}");
    } finally {
      isLoading(false);
    }
  }
}
