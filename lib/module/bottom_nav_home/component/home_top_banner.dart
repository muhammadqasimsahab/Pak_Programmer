// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/component/inidcator.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

import 'package:pak_programmer/module/bottom_nav_home/controller/home_top_banner_controller.dart';
import 'package:pak_programmer/module/bottom_nav_home/shimmer/banner_shimmer.dart';
import 'package:pak_programmer/module/top_banner_detailPage/top_bannerDetailPage.dart';
import 'package:pak_programmer/util/api.dart';

class HomeTopBanner extends StatefulWidget {
  const HomeTopBanner({
    Key? key,
    required this.getbannerController,
  }) : super(key: key);

  final HomeTopBannerController getbannerController;

  @override
  State<HomeTopBanner> createState() => _HomeTopBannerState();
}

class _HomeTopBannerState extends State<HomeTopBanner> {
  PageController _pageController = PageController();
var selected=0;
  double currentPage = 0;
  int? selectedindex;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = double.parse(_pageController.page.toString());
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.w, top: 1.h, right: 1.w),
      // height: 15.h,
      // height: 15.h,
      child: Obx(() {
        if (widget.getbannerController.isLoading.value) {
          return Center(
            child: BannerShimmer(),
          );
        } else {
          return Column(
            children: [
              Container(
                 height: 14.h,
                child: PageView.builder(
                  // scrollDirection: Axis.horizontal,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.getbannerController.get_top_bannerList.length,
                  onPageChanged: (index) {
                    setState(() {
                      selected = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: InkWell(
                        onTap: () {
                          Get.to(TopBannerDetailPage(),
                              transition: Transition.fadeIn);
                        },
                        child: Container(
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
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.w, vertical: 1.5.h),
                            child:
                                ClipRRect(
                              child: CachedNetworkImage(
                                imageUrl: AppConstants.image_base_url +
                                    widget.getbannerController
                                        .get_top_bannerList[index].bannerImage,
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                                placeholder: (context, url) => BannerShimmer(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            
              SizedBox(height: 0.3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 ...List.generate(
                  widget.getbannerController.get_top_bannerList.length,
                   (index) =>  Indicator(isActive: 
                    selected==index?true:false
                   ))
                ],
              )
            ],
          );
        }
      }),
   
    );
  }

 

}
