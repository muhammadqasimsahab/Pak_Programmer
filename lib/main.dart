import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/UI/splash%20screen/splash_screen.dart';
import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';
import 'package:pak_programmer/tester/tester_page.dart';
import 'package:sizer/sizer.dart';

import 'routes/routPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      // home: TesterPage(),
      // home: GenralBottomNavigationBarPage(),

    );

    } );
  }
}
