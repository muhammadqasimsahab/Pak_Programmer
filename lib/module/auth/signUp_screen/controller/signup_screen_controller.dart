// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';

// class SignUpScreenController extends GetxController {
//   final usernamecontroller = TextEditingController().obs;
//   final useremailController = TextEditingController().obs;
//   final passwordcontroller = TextEditingController().obs;
//   final confirmPasswordcontroller = TextEditingController().obs;
//   final formKey = GlobalKey<FormState>();
//   var isLoading = false;

//   FormValidation() {
//     // if (!formKey.currentState!.validate()) {
//     //   print('Form is Not valid');
//     // } else {
//     //   print("form are valid");
//     //   // Get.to(() => PakProgrammerBottomNav());
//     // }
//     final isValid = formKey.currentState!.validate();
//     if (!isValid) {
//       return;
//     }
//     formKey.currentState!.save();
//     // userSignUp();
//   }

//   String? usernamevalidation(val) {
//     bool emailvalid =
//         RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(val);
//     if (val.isEmpty) {
//       return 'Please Enter Your Email';
//     } else if (emailvalid == false) {
//       return 'Email is not valid';
//     } else
//       return null;
//   }

//   String? passwordValidation(val) {
//     if (val == "") {
//       return "please enter your password";
//     } else if (val.length < 6) {
//       return "please enter miniman 6 char";
//     } else
//       return null;
//   }

//   void userSignUp() {}
// }

import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pak_programmer/routes/pgaes.dart';
import 'package:pak_programmer/util/api.dart';
import 'package:pak_programmer/util/color.dart';

class SignUpScreenController extends GetxController {



  final firstController = TextEditingController().obs;
  final lastController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;
  RxBool isLoading=false.obs;

    var formKey = GlobalKey<FormState>();
  // var checkBoxData=GetXState();
  // var checkbox=checkBoxData.r

  void teacherSignUp(String first_name, String last_name, String email,
      var password, String gender) {
    
      }

        String? firstValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }
    String? emailValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }
    String? passwordValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }
        String? confirmPasswordValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    return null;
  }

  void signUpNow() async{
    try {
      isLoading.value=true;
      final response=await http.post(Uri.parse(AppConstants.signup_url+AppConstants.signup)
      ,body: {
        "first_name":firstController.value.text,
        "last_name":lastController.value.text,
        "email":emailController.value.text,
        "password":passwordController.value.text,
        "password_confirmation":confirmPasswordController.value.text,
      },
      );
      var data=jsonDecode(response.body);
      // print(response.statusCode);
      // print(data);
      if(response.statusCode==200){
       isLoading.value=false;
      //  Get.toNamed(Paths.asaTeacherSetLocation);
       Get.snackbar("Sign Up Successfully", data["message"],snackPosition: SnackPosition.BOTTOM,backgroundColor: PColor.secondryColor.withOpacity(0.4) );
       
      }else{
          isLoading(false);
        Get.snackbar("Error", data["message"],snackPosition: SnackPosition.BOTTOM,backgroundColor: PColor.secondryColor.withOpacity(0.4));
      }
    } catch (e) {
      isLoading(false);
      Get.snackbar("yaha par error he", e.toString(),snackPosition: SnackPosition.BOTTOM,backgroundColor:PColor.secondryColor.withOpacity(0.4));
    }
  }

}
