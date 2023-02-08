import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/Widgets/reusable_text_filed.dart';
import 'package:pak_programmer/module/enroll_form/controller/enroll_now_controller.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class SubscriptionForm extends StatefulWidget {
  const SubscriptionForm({super.key});

  @override
  State<SubscriptionForm> createState() => _SubscriptionFormState();
}

class _SubscriptionFormState extends State<SubscriptionForm> {
  final enrollController = Get.put(EnrollNowController());
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.6,
        title: Text("Enroll Now",style: TextStyle(color: Colors.black,fontSize: 14.sp),),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(bottom: 7.h, left: 3.w, right: 3.w),
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
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
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: 'Matric, Inter, Graduation',
                              controller: enrollController.qualificationNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController.qualificationValidate(text);
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
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: '',
                              controller: enrollController.interastedMessageNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController.intersatedValidate(text);
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
                       Row(
                        children: [
                          Icon(
                            Icons.note_add,
                            color: PColor.secondryColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Container(
                            width: Get.size.width - 20.w,
                            child: ReusableTextFiled(
                              autovalidate: AutovalidateMode.onUserInteraction,
                              hintText: '',
                              controller: enrollController.courseNameController,
                              visiable: false,
                              validate: (text) {
                                return enrollController.curseValidate(text);
                              },
                            ),
                          ),
                        ],
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
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: MaterialButton(
              onPressed: () {
                if (formkey.currentState!.validate()) ;
                // Get.to(SubscriptionForm(),transition: Transition.fadeIn);
              },
              child: Text(
                'Enroll Now',
                style: TextStyle(color: Colors.white),
              ),
              minWidth: Get.size.width - 20.w,
              color: PColor.secondryColor,
              height: 6.h,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
