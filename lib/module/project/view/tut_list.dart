// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/module/project/controller/controler.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

class BottomNavProjectPage extends StatefulWidget {
  const BottomNavProjectPage({super.key});

  @override
  State<BottomNavProjectPage> createState() => _BottomNavProjectPageState();
}

class _BottomNavProjectPageState extends State<BottomNavProjectPage> {
  // Connectivity connectivity = Connectivity();
  final  studentFindTutorsController =
      Get.put(ProjectListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F5FE),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.2,
           backgroundColor: Color(0xffF8F5FE),
          title: Text('Flutter Free Or Paid Project',style: TextStyle(color: Colors.black,fontSize: 11.sp),),
        ),
        body:Obx(()=>ListView.builder(
        itemCount: studentFindTutorsController.productlist.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 1.w,bottom: 1.h,top: 0.5.h),
            child: Row(
              children: [
              Card(
                elevation: 0,
                // color: Color.fromARGB(255, 211, 57, 57),
                child: Row(
                  children: [
                      Container(
                
                  padding: EdgeInsets.only(
                    top: 2.h,
                    bottom: 2.h,
                  ),
                  width: 40.w,
                  height: 25.h,
                  child: Image.asset(
                    PImages.project1,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 2.5.w),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            commonText(
                              title: studentFindTutorsController.productlist[index].brand
                                  .toString(),
                              textSize: 10.sp,
                            ),
                            Image.asset(PImages.freeicon,width: 9.w,height: 3.h,)
                          ],
                        ),
                        commonText(
                          title: "By Pak Programmers",
                          textSize: 6.sp,
                          color: Colors.grey,
                        ),
                      
                         Row(
                          children: [
                            custom_circle(),
                            SizedBox(width:1.3.w ,),
                            commonText(
                              title: studentFindTutorsController
                                  .productlist[index].category
                                  .toString(),
                              textSize: 9.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.normal,
                            )
                          ],
                        ), Row(
                          children: [
                            custom_circle(),
                            SizedBox(width:1.3.w ,),
                            commonText(
                              title: studentFindTutorsController
                                  .productlist[index].category
                                  .toString(),
                              textSize: 9.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.normal,
                            )
                          ],
                        ), Row(
                          children: [
                            custom_circle(),
                            SizedBox(width:1.3.w ,),
                            commonText(
                              title: studentFindTutorsController
                                  .productlist[index].category
                                  .toString(),
                              textSize: 9.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.normal,
                            )
                          ],
                        ), Row(
                          children: [
                            custom_circle(),
                            SizedBox(width:1.3.w ,),
                            commonText(
                              title: studentFindTutorsController
                                  .productlist[index].category
                                  .toString(),
                              textSize: 9.sp,
                              color: Colors.black54,
                              fontWeight: FontWeight.normal,
                            ),
                            SizedBox(height: 1.h,),
                            
                           
                          ],
                        ),
                          Row(
                               children: [
                                commonText(title: "Total Screen: ",textSize: 9.sp,color: Colors.black54,),
                                 commonText(
                                  title: "20",
                                  textSize: 9.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                            ),
                               ],
                             ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                   children: [
                                    commonText(title: "Language: ",textSize: 9.sp,color: Colors.black54,),
                                     commonText(
                                      title: "Flutter",
                                      textSize: 9.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                            ),
                                   ],
                             ),
                             SizedBox(width: 2.w,),
                               Container(
                              width: 22.w,
                              
                              decoration: BoxDecoration(border: Border.all(color: PColor.appColor,width: 1,),borderRadius: BorderRadius.circular(3)),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.remove_red_eye),
                                 commonText(title: "View",textSize: 9.sp,color: Colors.black54,),
                                       
                                ],
                              ),
                            ),
                            )
                                ],
                              ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                   children: [
                                    commonText(title: "Rating: ",textSize: 9.sp,color: Colors.black54,),
                                    RatingBarIndicator(
                                          unratedColor: PColor.color_white,
                                          rating: 5,
                                          // rating: double.parse(
                                          //     item?[index].starsCount ??
                                          //         ""),
                                          itemBuilder: (context, index) =>
                                              const Icon(Icons.star,
                                                  color: Colors.red),
                                          itemCount: 5,

                                          itemSize: 17,
                                          direction: Axis.horizontal,
                                        ),

                          
                          
                                   ],
                             ),
                                 ],
                               ),
                             
                      ],
                    ),
                  ),
                )
             
                  ],
                ),
              )
              ],
            ),
          );
        },
      )
   ));
    //  Obx(()=>Container(child: studentFindTutorsController.connectionStatus.value==1?Text('wifi'):studentFindTutorsController.connectionStatus.value==2?Text("mobile data"):Text('no internet'),)));
    // Obx(() => studentFindTutorsController.connectionStatus.value == 1
    //     ? mainBody()
    //     : studentFindTutorsController.connectionStatus.value == 2
    //         ? mainBody()
    //         : Lottie.asset('assets/lottiefile/no_internet.json')));
  }


  Container custom_circle() {
    return Container(
                        width: 3.w,
                        height: 2.4.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: PColor.appColor, width: 0.2.h)),
                      );
  }
}
