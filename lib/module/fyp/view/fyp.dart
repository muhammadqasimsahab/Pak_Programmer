import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/fyp/controller/controller.dart';
import 'package:pak_programmer/module/fyp/model/model.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class FypScreen extends StatelessWidget {
  final controller = Get.put(TeacherFindTutorsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("FYP",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: controller.productlist.length,
            itemBuilder: (context, index) {
              return ExpansionTile(
                // textColor: Colors.black,
                collapsedIconColor: Color(0xff67C8F4),

                iconColor: Color(0xff67C8F4),
                collapsedTextColor:Colors.black,
                textColor: Colors.black,

                  title: Text(controller.productlist[index].name,style: TextStyle(color: Colors.black,fontSize: 13.sp),),
                  children: [
                   Container(
                      height: 29.h,
                      child: Obx(() => ListView.builder(
                         physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.productlist.length,
                            itemBuilder: (context, pos) {
                              return Padding(
                                padding:  EdgeInsets.only(left: 3.w),
                                child: Row(
                                  children: [
                                 
                                    Padding(
                                     padding:  EdgeInsets.only(top: 0.5.h),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xff67C8F4),
                                        minRadius: 1.h,
                                      ),
                                    ),
                                    SizedBox(width: 2.w,),
                                    Padding(
                                      padding:  EdgeInsets.only(top: 0.5.h),
                                      child: Text(controller.productlist[pos].category),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )),
                    ),
                  ]);
            },
          ),
        ));
  }
}
