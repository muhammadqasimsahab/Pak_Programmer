import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';
import 'package:pak_programmer/module/enroll_form/servies/enroll_dropdown_servies.dart';
import 'package:pak_programmer/module/project/model/find_tutorModelClass.dart';
import 'package:pak_programmer/util/api.dart';
import 'package:pak_programmer/util/color.dart';
class EnrollNowController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailNameController = TextEditingController();
  final phoneNameController = TextEditingController();
  final cityNameController = TextEditingController();
  final qualificationNameController = TextEditingController();
  final interastedMessageNameController = TextEditingController();
  final courseNameController = TextEditingController();
  var isLoading=false.obs;
    final formkey = GlobalKey<FormState>();
  // GlobalKey<FormState> login = GlobalKey<FormState>();
  String? emailValidate(val) {
    // bool emailvalid =
    //     RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(val);
    // if (val.isEmpty) {
    //   return 'Please Enter Your Email';
    // } else if (emailvalid == false) {
    //   return 'Email is not valid';
    // }
      if (val == null || val.isEmpty) {
      return 'Can\'t be empty';
    }
     else
      return null;
  }

  String? firstNameValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    // if (text.length < 8) {
    //   return 'Too short';
    // }
    return null;
  }

  String? lastNameValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    // if (text.length < 8) {
    //   return 'Too short';
    // }
    return null;
  }

  String? phoneValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    // if (text.length > 8) {
    //   return 'Too short';
    // }
    return null;
  }

  String? cityValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }
   String? qualificationValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }
   String? intersatedValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }
   String? curseValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }
   signUpNow(String course) async{

    try {
      isLoading(true);
      final response=await http.post(Uri.parse(AppConstants.signup_url+AppConstants.course_registeration)
      ,body: {
        "first_name":firstNameController.toString(),
        "last_name":lastNameController.toString(),
        "email":emailNameController.text.trim(),
        "phone":phoneNameController.toString(),
        "city":cityNameController.toString(),
        "qualification":qualificationNameController.toString(),
        "interest_reason":interastedMessageNameController.toString(),
        "course":course.toString(),
      },
      );
      var data=jsonDecode(response.body);
      print(response.statusCode);
      print(data);
      if(response.statusCode==200){
       isLoading(false);
         Get.snackbar("Sign Up Successfully", data["message"],snackPosition: SnackPosition.BOTTOM,backgroundColor: PColor.secondryColor.withOpacity(0.4) );
        Get.to(PakProgrammerBottomNav());
        
      }else{
        isLoading(false);
         Get.snackbar("Error", data["message"],snackPosition: SnackPosition.BOTTOM,backgroundColor: PColor.secondryColor.withOpacity(0.4));
      }
    } catch (e) {
        isLoading(false);
      Get.snackbar("yaha par error he", e.toString(),snackPosition: SnackPosition.BOTTOM,backgroundColor: PColor.secondryColor.withOpacity(0.4));
    }
  }


  // var productlist=<StudentFindTutorsModelClass>[].obs;
  var productlist=List<ProjectListModelClass>.empty().obs;

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
      var products=await EnrollDropdownServices.getFindtutors();
      if(products!=null){
        productlist.assignAll(products);
      }
    } finally {
      isLoading(false);
      
    }
  }
}
