import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/UI/welcome_page.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/routes/pgaes.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2500), () => Get.to(WelcomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(PImages.logo,height: 40.h,width: 60.w,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Pak",style: TextStyle(color: PColor.secondryColor,fontWeight: FontWeight.w800,fontSize: 18.sp),),
            SizedBox(width: 1.w,),
            Text("Programmers",style: TextStyle(color: PColor.appColor,fontWeight: FontWeight.w800,fontSize: 18.sp),)
          ],
        ),
          ],
        ),
      ),
    );
  }
}
