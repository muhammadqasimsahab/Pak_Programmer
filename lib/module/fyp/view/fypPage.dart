import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/shimmer/banner_shimmer.dart';
import 'package:pak_programmer/module/coures_outline/controller/controler.dart';
import 'package:pak_programmer/module/coures_outline/view/component/dart_flutter_tab/controller/dart_flutterTab_Controller.dart';
import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs_tab/controller/why_chooseUsController.dart';
import 'package:pak_programmer/module/fyp/controller/conroller.dart';
import 'package:pak_programmer/util/api.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class FypPage extends StatelessWidget {
  FypPage({
    Key? key,
  }) : super(key: key);

  final fypController = Get.put(FypController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: commonText(
            title: "Fyp",
            color: PColor.color_white,
            textSize: 13.sp,
          ),
          backgroundColor: PColor.appColor,
        ),
        body: Container(
          child: Obx(
            () {
              if (fypController.isLoading.value) {
                return Center(
                  child: Center(child: CircularProgressIndicator()),
                );
              } else {
                return ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: fypController.productlist.length,
                  itemBuilder: (context, pos) {
                    return Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText(
                            // title: courseController.productlist[pos].title,
                            title: fypController.productlist[pos].fpyHeading,
                            fontWeight: FontWeight.w700,
                            textSize: 13.sp,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            height: 52.h,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: fypController
                                  .productlist[pos].description.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                          ],
                                        ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Flexible(
                                            child: Padding(
                                          padding: EdgeInsets.only(bottom: 1.h),
                                          child: Text(
                                            fypController.productlist[pos]
                                                .description[index].description,
                                            maxLines: 15,
                                            style: TextStyle(fontSize: 13.sp),
                                          ),
                                        )),
                                      ],
                                    ),
                                    //  Container(
                                    //   height: 14.h,
                                    //   child: PageView.builder(
                                    //     // scrollDirection: Axis.horizontal,
                                    //     // physics: NeverScrollableScrollPhysics(),
                                    //     itemCount: fypController
                                    //         .productlist[index]
                                    //         .description
                                    //         .length,
                                    //     onPageChanged: (index) {
                                    //       // setState(() {
                                    //       //   selected = index;
                                    //       // });
                                    //     },
                                    //     itemBuilder: (context, index) {
                                    //       return  fypController
                                    //         .productlist[index]
                                    //         .description[pos].img!
                                    //         .length==0? Container() :Padding(
                                    //         padding: EdgeInsets.only(left: 2.w),
                                    //         child: Image.network( AppConstants.image_base_fyp_url+
                                    //                         fypController
                                    //                             .productlist[
                                    //                                 index]
                                    //                             .description[
                                    //                                 pos]
                                    //                             .img.toString())
                                    //       );
                                    //     },
                                    //   ),
                                    // ),
                               fypController.productlist[pos].description[index].img!.length==0? Container() : Image.network( AppConstants.image_base_fyp_url+fypController.productlist[pos].description[index].img.toString(),width: 90.w,height: 22.h,)
                                    ],
                                );

                                // return Text(courseController.productlist[index].description[pos].description);
                              },
                            ),
                          )
                          // Text(courseController.productlist[index].heading),
                        ],
                      ),
                    ));
                  },
                );
              }
            },
          ),
        ));
  }
}
