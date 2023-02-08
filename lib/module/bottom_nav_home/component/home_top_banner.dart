
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/controller/home_top_banner_controller.dart';
import 'package:pak_programmer/util/api.dart';
import 'package:sizer/sizer.dart';

class HomeTopBanner extends StatelessWidget {
  const HomeTopBanner({
    Key? key,
    required this.getbannerController,
  }) : super(key: key);

  final HomeTopBannerController getbannerController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.w,top: 1.h,right: 1.w),
      height: 15.h,
      child: Obx(() {
        if(getbannerController.isLoading.value){
          return Center(
            child: CircularProgressIndicator(),
          );

        }else{
           return ListView.builder(
          // scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          itemCount: getbannerController.get_top_bannerList.length,
          itemBuilder: (context, index) {
    return Padding(
      padding: EdgeInsets.only(left: 2.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: Colors.grey.shade300, width: 1),
          color: Colors.white.withOpacity(0.5),
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
      
      child:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 1.w,vertical: 2.5.h),
        child: Container(
          
                child: Image.network(
                  AppConstants.image_base_url +
                      getbannerController.get_top_bannerList[index].bannerImage
                          ,fit: BoxFit.cover,
                  width: Get.size.width,
                  // height: 6.h,
                ),
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
