// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:pak_programmer/module/coures_outline/controller/controler.dart';
// import 'package:pak_programmer/module/coures_outline/view/component/dart_flutter_tab/controller/dart_flutterTab_Controller.dart';
// import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs_tab/controller/why_chooseUsController.dart';
// import 'package:pak_programmer/util/common_Text.dart';
// import 'package:sizer/sizer.dart';

// class DartAndFlutterTabView extends StatelessWidget {
//   const DartAndFlutterTabView({
//     Key? key,
//     required this.courseController,
//   }) : super(key: key);

//   final DartAndFlutterTabController courseController;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: Get.size.height - 25.h,
//       child: Obx(
//         () {
//           if (courseController.isLoading.value) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else {
//             return ListView.builder(
//               // physics: NeverScrollableScrollPhysics(),
//               itemCount: courseController.productlist.length,
//               itemBuilder: (context, pos) {
//                 return Card(
//                     child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       commonText(
//                         title: courseController.productlist[pos].title,
//                         fontWeight: FontWeight.w700,
//                         textSize: 13.sp,
//                       ),
//                       SizedBox(height: 1.h,),
//                       Container(
//                         height: 21.h,
//                         child: ListView.builder(
//                           physics: NeverScrollableScrollPhysics(),
//                           itemCount: courseController.productlist[pos].outline.length,
//                           itemBuilder: (context, index) {
//                             return Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Padding(
//                                       padding: EdgeInsets.only(top: 1.h),
//                                       child: CircleAvatar(
//                                         backgroundColor: Color(0xff67C8F4),
//                                         minRadius: 0.7.h,
//                                       ),
//                                     ),
                                  
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   width: 2.w,
//                                 ),

//                                 Flexible(
//                                     child: Padding(
//                                       padding:  EdgeInsets.only(bottom: 1.h),
//                                       child: Text(
//                                   courseController.productlist[pos]
//                                         .outline[index].outlineTitle,
//                                   maxLines: 15,
//                                   style: TextStyle(fontSize: 13.sp),
//                                 ),
//                                     )),
//                               ],
//                             );

//                             // return Text(courseController.productlist[index].description[pos].description);
//                           },
//                         ),
//                       )
//                       // Text(courseController.productlist[index].heading),
//                     ],
//                   ),
//                 ));
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/coures_outline/controller/controler.dart';
import 'package:pak_programmer/module/coures_outline/view/component/dart_flutter_tab/controller/dart_flutterTab_Controller.dart';
// import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs/controller/why_chooseUsController.dart';
import 'package:sizer/sizer.dart';


class DartAndFlutterTabView extends StatelessWidget {
  const DartAndFlutterTabView({
    Key? key,
    required this.courseController,
  }) : super(key: key);
final DartAndFlutterTabController courseController;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.size.height - 33.h,
        child: Obx(
          () {
            if(courseController.isLoading.value){
              return Center(
                child: CircularProgressIndicator(),
              );
            }else{
              return ListView.builder(
            itemCount: courseController.productlist.length,
            itemBuilder: (context, index) {
              return ExpansionTile(
                  // textColor: Colors.black,
                  collapsedIconColor: Color(0xff67C8F4),
                  iconColor: Color(0xff67C8F4),
                  collapsedTextColor: Colors.black,
                  textColor: Colors.black,
                  title: Text(
                    courseController.productlist[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 11.sp,
                    ),
                  ),
                  children: [
                    Container(
                     
                      height: Get.size.height,
                      child: Obx(() => ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: courseController.productlist[index].outline.length,
                            itemBuilder: (context, pos) {
                              return Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(top: 1.h),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Color(0xff67C8F4),
                                            minRadius: 0.7.h,
                                          ),
                                        ),
                                        Container(
                                          height: 1.5.h,
                                          child: VerticalDivider(color:Color(0xff67C8F4),))
                                      ],
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text(courseController
                                        .productlist[index].outline[pos].outlineTitle),
                                  ],
                                ),
                              );
                            },
                          )),
                    ),
                  ]);
        
            },
          );
         
            }
             },
        ),
      );
  }
}