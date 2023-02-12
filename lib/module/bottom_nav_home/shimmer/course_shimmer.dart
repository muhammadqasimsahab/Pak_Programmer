import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class CourseShimmer extends StatelessWidget {
  const CourseShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 25.h,
        child: Row(
          children: [
            SizedBox(
              width: 3.w,
            ),
            shimmerContainer(),
            SizedBox(
              width: 5.w,
            ),
            shimmerContainer()
          ],
        ));
  }

  Container shimmerContainer() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200),
      width: 45.w,
      height: 20.h,
      child: Shimmer.fromColors(
          highlightColor: Colors.white,
          baseColor: Colors.grey.shade300,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                width: 40.w,
                height: 5.h,
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),   color: Colors.white,),
             
                width: 40.w,
                height: 3.h,
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),   color: Colors.white,),
             
                width: 40.w,
                height: 3.h,
              ),
              SizedBox(
                height: 1.2.h,
              ),
              Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 3.4.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 10.w,
                      height: 3.h,
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),   color: Colors.white,),
             
                      width: 15.w,
                      height: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      width: 10.w,
                      height: 3.h,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}




class CourseNoImageShowShimmer extends StatelessWidget {
  const CourseNoImageShowShimmer({
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
        width: 20.w,
      height: 6.h,
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
