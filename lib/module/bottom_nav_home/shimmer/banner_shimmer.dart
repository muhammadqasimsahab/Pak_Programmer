import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class BannerShimmer extends StatelessWidget {
  const BannerShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 15.h,
        child: shimmerContainer());
  }

  Container shimmerContainer() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
      width: Get.size.width - 4.w,
      height: 20.h,
      child: Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: Colors.grey.shade300,
          child: image_text_container()),
    );
  }

  Column image_text_container() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: Get.size.width,
          height: 15.h,
        ),
      ),

      // )
    ]);
  }
}
