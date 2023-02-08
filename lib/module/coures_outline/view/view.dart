import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/constant/constant_button.dart';
import 'package:pak_programmer/module/coures_outline/controller/courses_controller.dart';
import 'package:pak_programmer/module/fyp/controller/controller.dart';
import 'package:pak_programmer/module/fyp/model/model.dart';
import 'package:pak_programmer/module/enroll_form/view/enroll_now_form.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class CourseOutline extends StatelessWidget {
  final controller = Get.put(CouresController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
          elevation: 0,
          centerTitle: true,
          title: Text(
            "FYP",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: Get.size.height - 25.h,
              child: Obx(
                () {
                  if(controller.isLoading.value){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }else{
                    return ListView.builder(
                  itemCount: controller.productlist.length,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                        // textColor: Colors.black,
                        collapsedIconColor: Color(0xff67C8F4),
                        iconColor: Color(0xff67C8F4),
                        collapsedTextColor: Colors.black,
                        textColor: Colors.black,
                        title: Text(
                          controller.productlist[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 11.sp,
                          ),
                        ),
                        children: [
                          Container(
                           
                            height: 22.h,
                            child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: controller.productlist.length,
                                  itemBuilder: (context, pos) {
                                    return Padding(
                                      padding: EdgeInsets.only(left: 3.w),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 0.5.h),
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff67C8F4),
                                              minRadius: 1.h,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(top: 0.5.h),
                                            child: Text(controller
                                                .productlist[pos].outline[index].outlineTitle),
                                          ),
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
            ),
         
            SizedBox(height: 7.6.h,),
           ConstantButton(name: "Enroll Now", onpress: (){
            Get.to(SubscriptionForm(),transition: Transition.fadeIn);
           })
          ],
        ));
  }
}
