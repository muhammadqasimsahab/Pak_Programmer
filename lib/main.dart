import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/enroll_form/view/enroll_now_form.dart';
import 'package:pak_programmer/module/splash%20screen/splash_screen.dart';
import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';
import 'package:pak_programmer/tester/tester_page.dart';
import 'package:sizer/sizer.dart';

import 'module/bottom_nav_home/controller/home_getLanguage_controller.dart';
import 'module/bottom_nav_home/controller/home_get_courseController.dart';
import 'module/bottom_nav_home/controller/home_top_banner_controller.dart';
import 'routes/routPage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

 final getCoursesController = Get.put(HomeGetCoursesController());
  final getLanguageController = Get.put(HomeGetLanguageController());
  final getbannerController = Get.put(HomeTopBannerController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),

      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      home: const SplashScreen(),
      // home: SubscriptionForm(),
      // home: GenralBottomNavigationBarPage(),


     
      

    );

    } );
  }
}
