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


  
//  late TabController _tabController;

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _tabController = TabController(vsync: this, length: languageDetailController.productlist.length);
//   // }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

// var lang_id=0;
// var index=0;
// var item_id=0;
 

// ///////////////
// ///
//   PageController _pageController = PageController();
// var selected=0;
//   double currentPage = 0;
//   int? selectedindex;

//   @override
//   void initState() {
//     _pageController.addListener(() {
//       setState(() {
//         currentPage = double.parse(_pageController.page.toString());
//       });
//     });
//     super.initState();
//   }


//   @override
//   Widget build(BuildContext context) {
   
//     return 
   
    
//     DefaultTabController(
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
//           bottom: TabBar(
//             // controller: tabController,
//             isScrollable: true,
//             indicatorSize: TabBarIndicatorSize.label,
//             indicatorColor: Colors.white,
//             labelColor: PColor.color_white,
//             unselectedLabelColor: Colors.grey,
//             onTap: (v){
//               setState(() {
//                 index=v;
//                 lang_id=languageDetailController.productlist[index].id;
//                item_id= languageDetailController.productlist[index].id;
                
//               });
//             },
//             tabs: List.generate(languageDetailController.productlist.length,
//                 (int index) {
                
//               return Container(
//                 child: 
//                 Obx(() {
//                   return InkWell(
                  
//                     child: Tab(
//                       text:
//                           languageDetailController.productlist[index].name),
//                   );
//                 }),
//               );
//             }),
//           ),
//         ),
//         body: 
//         Container(
//           // height: 300.h,
//           child: Obx(() {
//             if (languageDetailController.isLoading.value) {
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else {
//               return TabBarView(
              
//                 // controller: tabController,
//                 children: languageDetailController.productlist
//                 .map((element) {
               
//                   return Column(
//                     children: [
                   
//                       Container(
//                           child: Text(element.name),
                
//                         ),
//                     ],
//                   );
//                 })
//                 .toList(),
//               );
//             }
//           }),
//         ),
//       ),
//     );
  
//   }
// }

import 'package:flutter/material.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: PColor.appColor,
          automaticallyImplyLeading: false,
            title: Text('Login'),
          centerTitle: true,
        ),
        body:  Container(
          child: Column(
            children: [
              Expanded(
                child: Stepper(
                  type: stepperType,

                  physics: ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue:  continued,
                  
                  onStepCancel: cancel,
                  steps: <Step>[
                     Step(
                      title: new Text('Account'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Email Address'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Password'),
                          ),
                        ],
                      ),

                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0 ?
                      StepState.complete : StepState.disabled,
                    ),
                     Step(
                      title: new Text('Address'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Home Address'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Postcode'),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1 ?
                      StepState.complete : StepState.disabled,
                    ),
                     Step(
                      title: new Text('Mobile Number'),
                      content: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Mobile Number'),
                          ),
                        ],
                      ),
                      isActive:_currentStep >= 0,
                      state: _currentStep >= 2 ?
                      StepState.complete : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: PColor.appColor,
          child: Icon(Icons.change_circle_outlined,size: 30.sp,),
          onPressed: switchStepsType,
          
        ),

    );
  }
  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step){

    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 2 ?
        setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
        setState(() => _currentStep -= 1) : null;
  }
}
