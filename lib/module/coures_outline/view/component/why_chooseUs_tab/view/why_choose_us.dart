import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/coures_outline/controller/controler.dart';
import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs_tab/controller/why_chooseUsController.dart';
import 'package:pak_programmer/util/common_Text.dart';
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
      height: Get.size.height - 25.h,
      child: Obx(
        () {
          if (courseController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: courseController.productlist.length,
              itemBuilder: (context, pos) {
                return Card(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      commonText(
                        title: courseController.productlist[pos].heading,
                        fontWeight: FontWeight.w700,
                        textSize: 13.sp,
                      ),
                      SizedBox(height: 1.h,),
                      Container(
                        height: 57.h,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: courseController.productlist.length,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.h),
                                      child: CircleAvatar(
                                        backgroundColor: Color(0xff67C8F4),
                                        minRadius: 0.7.h,
                                      ),
                                    ),
                                  
                                  ],
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                      
                                Flexible(
                                    child: Padding(
                                      padding:  EdgeInsets.only(bottom: 1.5.h),
                                      child: Text(
                                  courseController.productlist[index]
                                        .description[pos].description,
                                  maxLines: 15,
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                                    )),
                              ],
                            );
                      },
                        ),
                      )
                    ],
                  ),
                ));
              },
            );
          }
        },
      ),
    );
  }
}
