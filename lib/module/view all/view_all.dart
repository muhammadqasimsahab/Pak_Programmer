import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/controller/home_getLanguage_controller.dart';
import 'package:pak_programmer/module/bottom_nav_home/shimmer/language_shimmer.dart';
import 'package:pak_programmer/module/coures_outline/controller/controler.dart';
import 'package:pak_programmer/module/language_detailpage.dart/view/language_detail_view.dart';
import 'package:pak_programmer/util/api.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

class ViewAllLanguage extends StatelessWidget {
  ViewAllLanguage({
    Key? key,
  }) : super(key: key);

  // final HomeGetLanguageController getLanguageController;
  final c = Get.put(HomeGetLanguageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: commonText(title: "View All",color: PColor.color_white,textSize: 13.sp),
          elevation: 0,
          backgroundColor: PColor.appColor,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
          // margin: EdgeInsets.only(left: 1.w, top: 1.h, right: 1.w),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
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
          // height: 24.h,
          // height: Get.size.height * 0.24,
          child: Obx(() {
            if (c.isLoading.value) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 1.2.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      height: Get.size.height,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 0),
                        // scrollDirection: Axis.horizontal,
                        itemCount: c.get_course_ProductList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(
                                  LanguageDetailPage(
                                      name: c.get_course_ProductList[index]
                                          .languageTitle),
                                  transition: Transition.fadeIn);
                            },
                            child: ListView(
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                Container(
                                  width: 30.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: ClipRRect(
                                      child: CachedNetworkImage(
                                        imageUrl: AppConstants.image_base_url +
                                            c.get_course_ProductList[index]
                                                .languageImage,
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                        placeholder: (context, url) =>
                                            NoImageShowShimmer(),
                                      ),
                                    ),
                                  ),
                                  // child: Text(getLanguageController.get_course_ProductList[index].languageTitle),
                                ),
                                commonText(
                                  title: c.get_course_ProductList[index]
                                      .languageTitle,
                                  textSize: 9.sp,
                                  textOverflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            }
          }),
        ));
  }
}
