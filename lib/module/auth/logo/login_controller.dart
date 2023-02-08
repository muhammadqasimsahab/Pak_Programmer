import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';


class LoginScreenController extends GetxController {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> login = GlobalKey<FormState>();

  FormValidation() {
    if (!login.currentState!.validate()) {
      print('Form is Not valid');
    } else {
      print("form are valid");
      Get.to(() => PakProgrammerBottomNav());
    }
  }

  String? usernamevalidation(val) {
    bool emailvalid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(val);
    if (val.isEmpty) {
      return 'Please Enter Your Email';
    } else if (emailvalid == false) {
      return 'Email is not valid';
    } else
      return null;
  }

  String? passwordValidation(val) {
    if (val == "") {
      return "please enter your password";
    } else if (val.length < 6) {
      return "please enter miniman 6 char";
    } else
      return null;
  }
}
