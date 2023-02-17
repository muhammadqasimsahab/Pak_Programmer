import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/Widgets/reusable_text_filed.dart';
import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';
import 'package:pak_programmer/module/enroll_form/controller/enroll_now_controller.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;

class SubscriptionForm extends StatefulWidget {
  const SubscriptionForm({super.key});

  @override
  State<SubscriptionForm> createState() => _SubscriptionFormState();
}

class _SubscriptionFormState extends State<SubscriptionForm> {
  final enrollController = Get.put(EnrollNowController());
  // final formkey = GlobalKey<FormState>();
  List categoryItemlist = [];

  Future getAllCategory() async {
    var baseUrl =
        "https://pakprogrammers.com/pakprogrammer/api/getDropdown";

    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        categoryItemlist = jsonData;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getAllCategory();
  }

  var dropdownvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        elevation: 0.2,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: PColor.appColor,
        title: Text(
          'Enroll Now',
          style: TextStyle(color: Colors.white, fontSize: 13.sp),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(bottom: 7.h, left: 3.w, right: 3.w),
              child: SingleChildScrollView(
                child: Form(
                  key: enrollController.formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'First Name',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: PColor.secondryColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: Get.size.width - 20.w,
                            child: ReusableTextFiled(
                              enableBordercolor: PColor.secondryColor,
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: 'Full Name',
                              controller: enrollController.firstNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController.firstNameValidate(text);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Last Name',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: PColor.secondryColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: Get.size.width - 20.w,
                            child: ReusableTextFiled(
                              enableBordercolor: PColor.secondryColor,
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: 'Last Name',
                              controller: enrollController.lastNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController.lastNameValidate(text);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.alternate_email_outlined,
                            color: PColor.secondryColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: Get.size.width - 20.w,
                            child: ReusableTextFiled(
                              enableBordercolor: PColor.secondryColor,
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: 'Email',
                              controller: enrollController.emailNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController.emailValidate(text);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Phone',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: PColor.secondryColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: Get.size.width - 20.w,
                            child: ReusableTextFiled(
                              enableBordercolor: PColor.secondryColor,
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: 'Phone',
                              controller: enrollController.phoneNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController.emailValidate(text);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'City',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: PColor.secondryColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: Get.size.width - 20.w,
                            child: ReusableTextFiled(
                              enableBordercolor: PColor.appColor,
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: 'City',
                              controller: enrollController.cityNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController.cityValidate(text);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Qualification',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.edit_rounded,
                            color: PColor.secondryColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: Get.size.width - 20.w,
                            child: ReusableTextFiled(
                              enableBordercolor: PColor.appColor,
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: 'Matric, Inter, Graduation',
                              controller:
                                  enrollController.qualificationNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController
                                    .qualificationValidate(text);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Why You Interested',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.note_sharp,
                            color: PColor.secondryColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: Get.size.width - 20.w,
                            child: ReusableTextFiled(
                              enableBordercolor: PColor.secondryColor,
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: '',
                              controller: enrollController
                                  .interastedMessageNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController
                                    .intersatedValidate(text);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Course',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Container(
                          child: DropdownButton(
                            isExpanded: true,
                            hint: Text('hooseNumber'),
                            items: categoryItemlist.map((item) {
                              return DropdownMenuItem(
                                value: item['Fpy_Heading'].toString(),
                                child: Text(item['Fpy_Heading'].toString()),
                              );
                            }).toList(),
                            onChanged: (newVal) {
                              setState(() {
                                dropdownvalue = newVal;
                              });
                            },
                            value: dropdownvalue,
                          ),
                        ),
                      ),
                   
                      SizedBox(
                        height: 2.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Obx(() => enrollController.isLoading.value
              ? CircularProgressIndicator()
              : Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: MaterialButton(
                    onPressed: () {
                      final isValid =
                          enrollController.formkey.currentState!.validate();

                      if (!isValid) {
                        return;
                      }
                      enrollController.formkey.currentState!.save();
                      //                  print(
                      //     " first name is : ${enrollController.firstNameController.value.text}");
                      // print(
                      //     " last name is : ${enrollController.lastNameController.value.text}");
                      // print(
                      //     " email name is : ${enrollController.emailNameController.value.text}");
                      // print(
                      //     " city name is : ${enrollController.cityNameController.value.text}");
                      // print(
                      //     " phone name is : ${enrollController.phoneNameController.value.text}");
                      // print(
                      //     " qualify name is : ${enrollController.qualificationNameController.value.text}");
                      // print(
                      //     " interast name is : ${enrollController.interastedMessageNameController.value.text}");
                      // print(
                      //     " course name is : ${enrollController.courseNameController.value.text}");
                      enrollController.signUpNow(dropdownvalue);
                      // Get.to(SubscriptionForm(),transition: Transition.fadeIn);
                    },
                    child: Text(
                      'Enroll Now',
                      style: TextStyle(color: Colors.white),
                    ),
                    minWidth: Get.size.width - 20.w,
                    color: PColor.appColor,
                    height: 6.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                )),
        ],
      ),
    );
  }
}
