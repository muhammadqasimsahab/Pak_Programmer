import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/auth/logo/logo_screen.dart';
import 'package:pak_programmer/module/auth/signUp_screen/controller/signup_screen_controller.dart';
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
  final signUpController = Get.put(SignUpScreenController());
  bool hiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: PColor.appColor,
        title: commonText(
          title: "SignUp",
          color: PColor.color_white,
          textSize: 14.sp,
        ),
      ),
      body: Form(
        key: signUpController.formKey,
        child: SingleChildScrollView(
          child:
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                height: 2.h,
            ),
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
                        fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "Programmers",
                    style: TextStyle(
                        color: PColor.appColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 15.sp),
                  )
                ],
            ),

            SizedBox(
                height: 4.h,
            ),
            Padding(
                padding: EdgeInsets.only(left: 3.w),
                child: Row(
                  children: [
                    commonText(
                        title: "Signup",
                        textSize: 18.sp,
                        fontWeight: FontWeight.w800),
                  ],
                ),
            ),
            SizedBox(
                height: 2.h,
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
                      hintText: 'Full Name',
                      controller: signUpController.firstController.value,
                      visiable: false,
                      validate: (val) {
                        return signUpController.firstValidate(val);
                      },
                    ),
                  ),
                ],
            ),
            SizedBox(height: 4.h),
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
                      hintText: 'Email',
                      controller: signUpController.emailController.value,
                      visiable: false,
                      validate: (val) {
                        return signUpController.emailValidate(val);
                      },
                    ),
                  )
                ],
            ),
            // ReusableTextFiled(
            //     controller: null, validate: null, hintText: 'Email'),
            SizedBox(height: 4.h),
            Row(
                children: [
                  Icon(
                    Icons.lock,
                    color: PColor.secondryColor,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    width: Get.size.width - 20.w,
                    child: ReusableTextFiled(
                      controller: signUpController.passwordController.value,
                      validate: (val) {
                        return signUpController.passwordValidate(val);
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
                  Icon(
                    Icons.lock,
                    color: PColor.secondryColor,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Container(
                    width: Get.size.width - 20.w,
                    child: ReusableTextFiled(
                      controller:
                          signUpController.confirmPasswordController.value,
                      validate: (val) {
                        return signUpController.confirmPasswordValidate(val);
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
                  )
                ],
            ),

            SizedBox(height: 2.h),
            Padding(
                padding: EdgeInsets.only(right: 0.w),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('By signup, you are agree to our',
                            style:
                                TextStyle(fontSize: 9.sp, color: Colors.black)),
                        Text('Terms & Conditions ',
                            style: TextStyle(
                                fontSize: 9.sp, color: PColor.appColor)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('and',
                            style:
                                TextStyle(fontSize: 9.sp, color: Colors.black)),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text('Privacy Policy',
                            style: TextStyle(
                                fontSize: 9.sp, color: PColor.appColor)),
                      ],
                    )
                  ],
                ),
            ),
            SizedBox(height: 3.h),
            Column(
              children: [
                 MaterialButton(
                      minWidth: Get.size.width - 20.w,
                      height: 6.h,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            color: Colors.white, fontSize: 14.sp),
                      ),
                      onPressed: () {
                        // Get.to(PakProgrammerBottomNav());
                        // signUpController.FormValidation();
                        // if (signUpController.formKey.currentState!
                        //     .validate()) {
                        // } else {
                        //   return null;
                        // }
                        signUpController.formKey.currentState!.save();
                    signUpController.signUpNow();

                        // controllerforallsignup.FormValidation();
                      },
                      color: PColor.appColor,
                    ),
                SizedBox(height: 2.h),
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
              ],
            )
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

    setState(() {
      hiddenpassword = !hiddenpassword;
    });
  }
}
