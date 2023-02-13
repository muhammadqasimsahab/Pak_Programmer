import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class LanguageShimmer extends StatelessWidget {
  const LanguageShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 23.h,
        child: Row(
          children: [
            // SizedBox(
            //   width: 2.w,
            // ),
            shimmerContainer()
          ],
        ));
  }

  Container shimmerContainer() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
      width: Get.size.width - 7.w,
      height: 20.h,
      child: Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: Colors.grey.shade300,
          child: Column(
            children: [
              SizedBox(
                height: 1.2.h,
              ),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        image_text_container(),
                        image_text_container(),
                      ],
                    ),
                    Column(
                      children: [
                        image_text_container(),
                        image_text_container(),
                      ],
                    ),
                    Column(
                      children: [
                        image_text_container(),
                        image_text_container(),
                      ],
                    ),
                    Column(
                      children: [
                        image_text_container(),
                        image_text_container(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Column image_text_container() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          width: 20.w,
          height: 5.5.h,
        ),
        SizedBox(
          height: 0.5.h,
        ),
        Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),   color: Colors.white,),
             
          width: 10.w,
          height: 1.3.h,
        ),
        SizedBox(
          height: 2.h,
        ),

        // )
      ],
    );
  }
}



class NoImageShowShimmer extends StatelessWidget {
  const NoImageShowShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 23.h,
        child: shimmerContainer());
  }

  Container shimmerContainer() {
    return Container(
   
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
      // width: Get.size.width - 4.w,
      // height: 15.h,
        width: 15.w,
      height: 5.5.h,
      child: Center(
        child: Shimmer.fromColors(
            highlightColor: Colors.white,
            baseColor: Colors.grey.shade300,
            child:image_text_container()
            
            ),
      ),
    );
  }

  Container image_text_container() {
    return Container(
        //  margin: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      width: 15.w,
      height: 5.5.h,
    );
  }
}
