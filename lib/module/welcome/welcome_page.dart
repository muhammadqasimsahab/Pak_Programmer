import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/auth/logo/logo_screen.dart';
import 'package:pak_programmer/constant/constant_button.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';
import 'package:pak_programmer/util/app_style.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/reuseable_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PColor.secondryColor,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Get.to(PakProgrammerBottomNav(),
                      transition: Transition.fadeIn);
                },
                child: Center(
                    child: commonText(
                  title: "Skip",
                  color: Colors.white,
                  textSize: 14.sp,
                ))),
          )
        ],
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Image(image: AssetImage(PImages.logo), width: 30.w),
                    ),
                     SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Pak",
                          style: TextStyle(
                              color: PColor.secondryColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 18.sp),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Programmers",
                          style: TextStyle(
                              color: PColor.appColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 18.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('Welcome',
                        style: KEncodeSansBold.copyWith(fontSize: 20.sp)),
                     SizedBox(
                      height: 6.h,
                    ),
                    Text('Create an account and access thousand',
                        style: KEncodeSansRagular.copyWith(color: KGrey)),
                    Text('of cool stuffs',
                        style: KEncodeSansRagular.copyWith(color: KGrey)),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 7.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ConstantButton(
                      name: "Getting Started",
                      onpress: () {
                        Get.to(LogInScreen(), transition: Transition.fadeIn);
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                          style: KEncodeSansRagular.copyWith(color: KGrey)),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogInScreen()));
                        },
                        child: Text('  Log In',
                            style: KEncodeSansBold.copyWith(
                              color: Klightgreen,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
