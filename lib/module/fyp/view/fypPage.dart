import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/fyp/controller/conroller.dart';
import 'package:pak_programmer/module/fyp/servies/fyp_servies.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

class FypPage extends StatefulWidget {
  const FypPage({super.key});

  @override
  State<FypPage> createState() => _FypPageState();
}

class _FypPageState extends State<FypPage> {
  final fypController=Get.put(FypController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: commonText(title: "Fyp",color: PColor.color_white,textSize: 13.sp,),
        backgroundColor: PColor.appColor,

      ),
      body:
         Obx((){
          if(fypController.isLoading.value){
            return CircularProgressIndicator();
          }else{
            return Container(
              
              child: ListView.builder(
                itemCount: fypController.productlist.length,
                itemBuilder: (context,index){
                  return  Column(
                children: [
                  // Text(fypController.productlist[index].idea[index].ideaDescription)
                  Text("asdfads")
                ],
              );
                },
              ),
            );
          }
        }),
      
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';
// import 'package:pak_programmer/images_class/images_class.dart';
// import 'package:pak_programmer/module/fyp/controller/conroller.dart';
// import 'package:pak_programmer/module/project/controller/controler.dart';
// import 'package:pak_programmer/util/color.dart';
// import 'package:pak_programmer/util/common_Text.dart';
// import 'package:sizer/sizer.dart';

// class FypPage extends StatefulWidget {
//   const FypPage({super.key});

//   @override
//   State<FypPage> createState() => _FypPageState();
// }

// class _FypPageState extends State<FypPage> {
//   // Connectivity connectivity = Connectivity();
//   final studentFindTutorsController = Get.put(FypController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        backgroundColor: PColor.backgroundColor,
//         appBar: AppBar(
//           // centerTitle: true,
//           elevation: 0.2,
//           automaticallyImplyLeading: false,
//           // leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios)),
//           backgroundColor:PColor.appColor,
//           title: Text(
//             'Fyp',
//             style: TextStyle(color: Colors.white, fontSize: 13.sp),
//           ),
//         ),
//         body: Obx(() {
//           if(studentFindTutorsController.isLoading.value){
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }else{
//              return Container(
//               height: 500,
//               width: 300,
//                child: ListView.builder(
//                 itemCount: studentFindTutorsController.productlist.length,
//                 itemBuilder: (context, index) {
//                   return  Container(
//                           margin:
//                               EdgeInsets.only(left: 1.w, bottom: 1.h, top: 0.5.h),
//                           child: Row(
//                             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Card(
//                                 elevation: 0,
//                                 // color: Color.fromARGB(255, 211, 57, 57),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.only(
//                                         top: 2.h,
//                                         bottom: 2.h,
//                                       ),
//                                       width: 40.w,
//                                       height: 25.h,
//                                       child: Image.asset(
//                                         PImages.project1,
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.only(left: 2.5.w),
//                                       child: Container(
//                                         width: Get.size.width / 1.86,
//                                         child: Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.spaceBetween,
//                                               children: [
//                                                 commonText(
//                                                   title:
//                                                       studentFindTutorsController
//                                                           .productlist[index]
//                                                           .idea[index].ideaDescription
//                                                           .toString(),
//                                                   textSize: 10.sp,
//                                                 ),
//                                                 Image.asset(
//                                                   PImages.freeicon,
//                                                   width: 9.w,
//                                                   height: 3.h,
//                                                 )
//                                               ],
//                                             ),
//                                             commonText(
//                                               title: "By Pak Programmers",
//                                               textSize: 6.sp,
//                                               color: Colors.grey,
//                                             ),
                                         
//                                           ],
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         );
//                 },
//             ),
//              );
        
//           }
//          }));
//     //  Obx(()=>Container(child: studentFindTutorsController.connectionStatus.value==1?Text('wifi'):studentFindTutorsController.connectionStatus.value==2?Text("mobile data"):Text('no internet'),)));
//     // Obx(() => studentFindTutorsController.connectionStatus.value == 1
//     //     ? mainBody()
//     //     : studentFindTutorsController.connectionStatus.value == 2
//     //         ? mainBody()
//     //         : Lottie.asset('assets/lottiefile/no_internet.json')));
//   }

//   Container custom_circle() {
//     return Container(
//       width: 3.w,
//       height: 2.4.h,
//       decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           border: Border.all(color: PColor.appColor, width: 0.2.h)),
//     );
//   }
// }
