import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/enroll_form/view/enroll_now_form.dart';
import 'package:pak_programmer/module/fyp/view/fypPage.dart';
import 'package:pak_programmer/module/language_detailpage.dart/view/m.dart';
import 'package:pak_programmer/module/splash%20screen/splash_screen.dart';
import 'package:pak_programmer/module/bottom_nav/bottom_nav.dart';
import 'package:pak_programmer/tester/tester_page.dart';
import 'package:pak_programmer/util/color.dart';
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
      title: 'Pak Programmers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),

      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      home: const SplashScreen(),
      // home: StepperDemo(),
      // home: SubscriptionForm(),
      // home: GenralBottomNavigationBarPage(),


     
      

    );

    } );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TabBarDemo(),
//     );
//   }
// }

// class TabBarDemo extends StatefulWidget {
//   @override
//   _TabBarDemoState createState() => _TabBarDemoState();
// }

// class _TabBarDemoState extends State<TabBarDemo>
//     with SingleTickerProviderStateMixin {
// late  TabController _controller;
//   int _selectedIndex = 0;

//   List<Widget> list = [
//     Tab(icon: Icon(Icons.card_travel)),
//     Tab(icon: Icon(Icons.add_shopping_cart)),
//   ];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // Create TabController for getting the index of current tab
//     _controller = TabController(length: list.length, vsync: this);

//     _controller.addListener(() {
//       setState(() {
//         _selectedIndex = _controller.index;
//       });
//       print("Selected Index: " + _controller.index.toString());
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(
//             onTap: (index) {
//               // Should not used it as it only called when tab options are clicked,
//               // not when user swapped
//             },
//             controller: _controller,
//             tabs: list,
//           ),
//           title: Text('Tabs Demo'),
//         ),
//         body: TabBarView(
//           controller: _controller,
//           children: [
//             Center(
//                 child: Text(
//               _selectedIndex.toString(),
//               style: TextStyle(fontSize: 40),
//             )),
//             Center(
//                 child: Text(
//               _selectedIndex.toString(),
//               style: TextStyle(fontSize: 40),
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }