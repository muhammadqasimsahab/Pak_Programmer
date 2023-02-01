import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/UI/auth/logo/logo_screen.dart';
import 'package:pak_programmer/UI/auth/signUp_screen/signup_screen_controller.dart';
import 'package:pak_programmer/Widgets/reuseable_button.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';
import 'package:pak_programmer/module/bottom_nav_home/pak_programmer_home.dart';
import 'package:pak_programmer/util/app_style.dart';
// import 'package:pak_programmer/pages/home_page/pak_programmer_home.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

import '../../../Widgets/reusable_text_filed.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var controllerforallsignup = Get.put(SignUpScreenController());
  bool hiddenpassword = true;
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child:Form(
          key: controllerforallsignup.signup,
          child: SingleChildScrollView(
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.h,),
                    Image.asset(
                      PImages.logo,
                      height: 20.h,
                      width: 30.w,
                    ),
                    // SizedBox(height: Get.size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Pak",
                          style: TextStyle(
                              color: PColor.secondryColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 13.sp),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Programmers",
                          style: TextStyle(
                              color: PColor.appColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 13.sp),
                        )
                      ],
                    ),
                 
                    SizedBox(height: 4.h,),
                     Padding(
                       padding:  EdgeInsets.only(left: 3.w),
                       child: Row(
                    children: [
                        commonText(title: "Signup",textSize: 22.sp,fontWeight: FontWeight.w800),
                    ],
                  ),
                     ),
                   SizedBox(height: 2.h,),
                    Row(
                      children: [
                          Icon(Icons.person,color: PColor.secondryColor,),
                        SizedBox(width: 2.w,),
                        Container(
                           width: Get.size.width-20.w,
                          child: ReusableTextFiled(
                            hintText: 'Full Name',
                            controller: nameController,
                            visiable: false,
                            validate: (val) {
                              return controllerforallsignup.usernamevalidation(val);
                            },
                          ),
                        ),
                      ],
                    ),
                     SizedBox(height: 4.h),
                    Row(
                      children: [
                          Icon(Icons.alternate_email_outlined,color: PColor.secondryColor,),
                        SizedBox(width: 2.w,),
                        Container(
                           width: Get.size.width-20.w,
                          child: ReusableTextFiled(
                            hintText: 'Email',
                            controller: emailController,
                            visiable: false,
                            validate: (val) {
                              return controllerforallsignup.usernamevalidation(val);
                            },
                          ),
                        ),
                      ],
                    ),
                    // ReusableTextFiled(
                    //     controller: null, validate: null, hintText: 'Email'),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Icon(Icons.lock,color: PColor.secondryColor,),
                        SizedBox(width: 2.w,),
                        Container(
                          width: Get.size.width-20.w,
                          child: ReusableTextFiled(
                            controller:passwordController,
                            validate: (val) {
                              return controllerforallsignup.passwordValidation(val);
                            },
                            suffixicon: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(hiddenpassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            visiable: hiddenpassword,
                            hintText: 'Passwords',
                          ),
                        ),
                      ],
                    ),
                SizedBox(height: 4.h),
                 Row(
                      children: [
                        Icon(Icons.lock,color: PColor.secondryColor,),
                        SizedBox(width: 2.w,),
                        Container(
                          width: Get.size.width-20.w,
                          child: ReusableTextFiled(
                            controller:confirmPasswordController,
                            validate: (val) {
                              return controllerforallsignup.passwordValidation(val);
                            },
                            suffixicon: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(hiddenpassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            visiable: hiddenpassword,
                            hintText: 'confirm Passwords',
                          ),
                        ),
                      ],
                    ),
               
                    SizedBox(height: 2.h),
                    Padding(
                      padding:  EdgeInsets.only(right: 0.w),
                      child: Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('By signup, you are agree to our',
                                  style: TextStyle(fontSize: 9.sp,color:Colors.black)),
                                   Text('Terms & Conditions ',
                                  style: TextStyle(fontSize: 9.sp,color: PColor.appColor)),
                                
                            ],
                          ),
                            Row(
                              children: [
                                 Text('and',
                              style: TextStyle(fontSize: 9.sp,color:Colors.black)),
                              SizedBox(width: 2.w,),
                               Text('Privacy Policy',
                              style: TextStyle(fontSize: 9.sp,color: PColor.appColor)),
                              ],
                            )
                        ],
                      ),
                    ),
                    SizedBox(height: 3.h),

                    MaterialButton(
                      minWidth: Get.size.width - 20.w,
                      height: 6.h,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(
                        'Signup',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        Get.to(GenralBottomNavigationBarPage());
                        // controllerforallsignup.FormValidation();
                      },
                      color: PColor.secondryColor,
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Joined us before?'),
                        SizedBox(width: 5),
                        InkWell(
                            onTap: () {
                              Get.to(LogInScreen());
                            },
                            child: Text('Login',
                                style: TextStyle(
                                  color: PColor.appColor,
                                ))),
                      ],
                    ),
                 
                 
                  ]),
            
          ),
        ),
     
      ),
    );
  }

  void _togglePasswordView() {
    // if (hiddenpassword == true) {
    //   hiddenpassword = false;
    // } else {
    //   hiddenpassword = true;
    // }
    hiddenpassword = !hiddenpassword;
    setState(() {});
  }
}
