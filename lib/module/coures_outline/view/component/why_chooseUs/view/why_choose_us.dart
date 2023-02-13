import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/coures_outline/controller/controler.dart';
import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs/controller/why_chooseUsController.dart';
import 'package:sizer/sizer.dart';


class WhyChooseUsTab extends StatelessWidget {
  const WhyChooseUsTab({
    Key? key,
    required this.courseController,
  }) : super(key: key);

  final WhyChooseUsController courseController;

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
            itemCount: 2,
            itemBuilder: (context, index) {
              return ExpansionTile(
                  // textColor: Colors.black,
                  collapsedIconColor: Color(0xff67C8F4),
                  iconColor: Color(0xff67C8F4),
                  collapsedTextColor: Colors.black,
                  textColor: Colors.black,
                  title: Text(
                    courseController.productlist[index].heading,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 11.sp,
                    ),
                  ),
                  children: [
                    Container(
                     
                      height: Get.size.height-57.h,
                      child: Obx(() => ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: courseController.productlist.length,
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
                                            minRadius: 1.h,
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
                                    // Text(courseController
                                    //     .productlist[index].description[pos].),
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