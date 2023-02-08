import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EnrollNowController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailNameController = TextEditingController();
  final phoneNameController = TextEditingController();
  final cityNameController = TextEditingController();
  final qualificationNameController = TextEditingController();
  final interastedMessageNameController = TextEditingController();
  final courseNameController = TextEditingController();

  String? emailValidate(val) {
    bool emailvalid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(val);
    if (val.isEmpty) {
      return 'Please Enter Your Email';
    } else if (emailvalid == false) {
      return 'Email is not valid';
    } else
      return null;
  }

  String? firstNameValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 8) {
      return 'Too short';
    }
    return null;
  }

  String? lastNameValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 8) {
      return 'Too short';
    }
    return null;
  }

  String? phoneValidate(text) {
    if (text == null || text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 8) {
      return 'Too short';
    }
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
}
