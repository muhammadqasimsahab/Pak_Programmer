
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/controller/home_getLanguage_controller.dart';
import 'package:pak_programmer/util/api.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

class LanguageContainer extends StatelessWidget {
  const LanguageContainer({
    Key? key,
    required this.getLanguageController,
  }) : super(key: key);

  final HomeGetLanguageController getLanguageController;

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(left: 1.w,top: 1.h,right: 1.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 1),
        color: Colors.white.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      height: 21.h,
      child: Obx(() {
        return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          // scrollDirection: Axis.horizontal,
          itemCount:
              getLanguageController.get_course_ProductList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 2.w),
              child: Container(
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Image.network(
                      AppConstants.image_base_url +
                          getLanguageController
                              .get_course_ProductList[index]
                              .languageImage,
                      width: 17.w,
                      height: 3.4.h,
                    ),
                     
                    commonText(title: getLanguageController
                        .get_course_ProductList[index].languageTitle,textSize: 10.sp,textOverflow: TextOverflow.ellipsis,)
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
