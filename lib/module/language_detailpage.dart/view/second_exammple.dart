// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// // import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:flutter_swiper_view/flutter_swiper_view.dart';
// import 'package:get/get.dart';
// import 'package:pak_programmer/constant/tabbar_dot_indicator.dart';
// import 'package:pak_programmer/module/language_detailpage.dart/controller/get_language_category.dart';
// import 'package:pak_programmer/module/language_detailpage.dart/controller/lang_detail_body_controller.dart';
// import 'package:sizer/sizer.dart';
// import 'package:url_launcher/url_launcher.dart';

// import 'package:pak_programmer/util/color.dart';
// import 'package:pak_programmer/util/common_Text.dart';
// import 'package:visibility_detector/visibility_detector.dart';

// int? lang_title;
// int? get_tabbar_id;
// int? get_tabbar_lang_id;

// class LanguageDetailPage extends StatefulWidget {
//   String? name;
//   int? id;
//   LanguageDetailPage({super.key, this.name, this.id});

//   @override
//   State<LanguageDetailPage> createState() => _LanguageDetailPageState();
// }

// class _LanguageDetailPageState extends State<LanguageDetailPage>
//     with SingleTickerProviderStateMixin {
//   final Uri whatapps = Uri.parse("https://whatsapp.com");

//   var phone = "+923351956201";
//   void lunchWhatApp(number, message) async {
//     String url = "whatapp://send&phone=$number&text$message";
//     await canLaunchUrl(Uri.parse(url))
//         ? lunchWhatApp("03351956201", "")
//         : print("can't open whatapp");
//   }

//   TabController? tabController;

//   final languageDetailController = Get.put(GetLanugaeDetailController());
//   final languageDetailBodyController =
//       Get.put(GetLanugaeDetailBodyController());

//  var _controller;
//   int _selectedIndex = 0;

// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // Create TabController for getting the index of current tab

//  _controller = TabController(length: 9, vsync: this);
//     _controller.addListener(() {
     
//        _selectedIndex = _controller.index;
//       setState(() {
       
//       });
//       // print("Selected Index: " + _controller.index.toString());
//     });
//   }


//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: languageDetailController.productlist.length,
//       child: Scaffold(
//         backgroundColor: PColor.backgroundColor,
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: PColor.secondryColor,
//           onPressed: () {
//             // lunchWhatApp("+923351956201", "hello");
//             canLaunchUrl(whatapps);
//           },
//           child: Icon(Icons.whatsapp),
//         ),
//         appBar: AppBar(
//           elevation: 0,
//           title: commonText(
//             title: widget.name.toString(),
//             textSize: 13.sp,
//             color: PColor.color_white,
//           ),
//           leading: IconButton(
//               onPressed: () {
//                 Get.back();
//               },
//               icon: const Icon(Icons.arrow_back_ios)),
//           backgroundColor: PColor.appColor,
//            bottom: TabBar(
//             isScrollable: true,
//             onTap: (index) {
//               // Should not used it as it only called when tab options are clicked,
//               // not when user swapped
//             },
            
//             controller: _controller,
//             tabs: languageDetailController.productlist.map((element) => Tab(
//                text: element.name,
//             )).toList(),
//           ),
//         ),
//         body: Container(
//           // height: 300.h,
//           child: Obx(() {
//             if (languageDetailController.isLoading.value) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else {
//               return  TabBarView(
//           controller: _controller,
//           // children: [
//             // Container(
//             //   child: Text("qaiser"),
//             // ),
//             // Container(child: Text("Farooq"),),
//             // Container(child: Text("khan"),),
//           // ],
//           // 
//           children:  languageDetailController.productlist.map((element) => Container(
//             child: Text(_selectedIndex.toString()),
//           )).toList()
//         );
//             }
//           }),
//         ),
//       ),
//     );
//   }
// }
