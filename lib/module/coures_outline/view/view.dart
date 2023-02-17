// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pak_programmer/constant/constant_button.dart';
import 'package:pak_programmer/module/coures_outline/controller/controler.dart';
import 'package:pak_programmer/module/coures_outline/view/component/dart_flutter_tab/controller/dart_flutterTab_Controller.dart';
import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs_tab/controller/why_chooseUsController.dart';
import 'package:pak_programmer/module/coures_outline/view/component/why_chooseUs_tab/view/why_choose_us.dart';

import 'package:pak_programmer/module/enroll_form/view/enroll_now_form.dart';
import 'package:pak_programmer/constant/tabbar_dot_indicator.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

import 'component/dart_flutter_tab/view/dart_flutterTab_view.dart';

class CourseOutline extends StatefulWidget {
  String name;
   CourseOutline({
    Key? key,
    required this.name,
  }) : super(key: key);
  @override
  State<CourseOutline> createState() => _CourseOutlineState();
}

class _CourseOutlineState extends State<CourseOutline> {
  final courseController = Get.put(WhyChooseUsController());
  final getCourseController=Get.put(DartAndFlutterTabController());
  // TabController _tabController = TabController(length: 3, vsync: this);

  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

          appBar: AppBar(
            // centerTitle: true,
            elevation: 0.2,
            automaticallyImplyLeading: false,
            leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios)),
            backgroundColor:PColor.appColor,
            title: Text(
              widget.name,
              style: TextStyle(color: Colors.white, fontSize: 13.sp),
            ),
              bottom: TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.white,
                //  indicator: CirculerIndicator(color: PColor.color_white,radius: 0.8.h),
                labelColor: PColor.color_white,
                unselectedLabelColor: Colors.grey,
                tabs: const[
                  Tab(
                    text: 'Why Pak pro',
                  ),
                  Tab(
                    text: 'Dart & Flutter',
                  ),
                  Tab(
                    text: 'Full Stack',
                  ),
                  Tab(
                    text: 'Fee Structure',
                  ),
                ],
              )
            
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
            child: Column(
              children: [
            WhyChooseUsTab(courseController: courseController),
               
                   SizedBox(height: 2.h,),
             ConstantButton(name: "Enroll Now", onpress: (){
              // controller.fetchProduct();
              Get.to(SubscriptionForm(),transition: Transition.fadeIn);
             })
              ],
            ),
          ),
          // Text("advacne"),
          DartAndFlutterTabView(courseController: getCourseController),
          Text("advacne"),
          Text("advacne"),
    
          ])
    ));
  }
}
