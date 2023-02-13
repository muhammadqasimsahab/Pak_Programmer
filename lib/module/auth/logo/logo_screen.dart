import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/auth/logo/login_controller.dart';
import 'package:pak_programmer/Widgets/reuseable_button.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/module/forget_password/forget_password.dart';
import 'package:pak_programmer/util/app_style.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

import '../../../Widgets/reusable_text_filed.dart';
import '../signUp_screen/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var controllerforall = Get.put(LoginScreenController());
  bool hiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
         appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: PColor.appColor,
        title: commonText(title: "Login",color: PColor.color_white,textSize: 14.sp,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: controllerforall.login,
          child: SingleChildScrollView(
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.h,),
                    Image.asset(
                      PImages.logo,
                      height: 15.h,
                      width: 25.w,
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
                 
                    SizedBox(height: 6.h,),
                     Padding(
                       padding:  EdgeInsets.only(left: 3.w),
                       child: Row(
                    children: [
                        commonText(title: "Login",textSize: 22.sp,fontWeight: FontWeight.w800),
                    ],
                  ),
                     ),
                   SizedBox(height: 2.h,),
                    Row(
                      children: [
                          Icon(Icons.alternate_email_outlined,color: PColor.secondryColor,),
                        SizedBox(width: 2.w,),
                        Container(
                           width: Get.size.width-20.w,
                          child: ReusableTextFiled(
                            hintText: 'Email',
                            controller: controllerforall.usernamecontroller,
                            visiable: false,
                            validate: (val) {
                              return controllerforall.usernamevalidation(val);
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
                            controller: controllerforall.passwordcontroller,
                            validate: (val) {
                              return controllerforall.passwordValidation(val);
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
                    SizedBox(height: 2.h),
                    Padding(
                      padding:  EdgeInsets.only(right: 4.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){
                              Get.to(ForgetPassword(),transition: Transition.fadeIn);
                            },
                            child: Text('Forgot Password?',
                                style: TextStyle(fontSize: 10.sp,color: PColor.appColor)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 17.h),

                    MaterialButton(
                      minWidth: Get.size.width - 20.w,
                      height: 6.h,
                      
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        controllerforall.FormValidation();
                      },
                      color: PColor.appColor,
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('New to Pak Programmers?'),
                        SizedBox(width: 5),
                        InkWell(
                            onTap: () {
                              Get.to(SignUpScreen());
                            },
                            child: Text('Register',
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
