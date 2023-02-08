
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/module/bottom_nav_home/controller/home_get_courseController.dart';
import 'package:pak_programmer/module/coures_outline/view/view.dart';
import 'package:pak_programmer/module/fyp/view/fyp.dart';
import 'package:pak_programmer/util/api.dart';
import 'package:sizer/sizer.dart';

class HomeCoursesContainer extends StatelessWidget {
  const HomeCoursesContainer({
    Key? key,
    required this.getCoursesController,
  }) : super(key: key);

  final HomeGetCoursesController getCoursesController;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 1.5.w),
       margin: EdgeInsets.only(left: 1.w,top: 1.h,right: 1.w),
      height: 25.h,
      child: Obx(() {
        if(getCoursesController.isLoading.value){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else{
           return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getCoursesController.get_course_ProductList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: InkWell(
                onTap: (){
                  Get.to(CourseOutline(),transition: Transition.fadeIn);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: Colors.grey.shade300, width: 1),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset:
                            Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  height: 25.h,
                  width: Get.size.width / 2.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        child: Image.network(
                          AppConstants.image_base_url +
                              getCoursesController
                                  .get_course_ProductList[index]
                                  .courseImage,
                          width: 20.w,
                          height: 6.h,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              getCoursesController
                                  .get_course_ProductList[index]
                                  .courseTitle,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              getCoursesController
                                  .get_course_ProductList[index]
                                  .courseSubtitle,
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              margin: EdgeInsets.only(bottom: 1.h),
                              child: Row(
                                children: [
                                  Icon(
                                    (Icons.access_time),
                                    size: 15.sp,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Text(
                                    getCoursesController
                                        .get_course_ProductList[index]
                                        .courseDuration,
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )),
                          Container(
                              margin: EdgeInsets.only(bottom: 1.2.h),
                              child: Image.asset(
                                PImages.off30,
                                height: 6.h,
                                width: 6.w,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
     
        }
        }),
    );
  }
}
