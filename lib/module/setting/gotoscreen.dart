import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pak_programmer/module/setting/activitycontainer.dart';
import 'package:pak_programmer/module/setting/entityscreen.dart';
import 'package:sizer/sizer.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: Get.size.width,
                  padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 30.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 75.h,
                        width: 75.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                        ),
                        child: Icon(Icons.person,color: Colors.white,size: 60.sp,),
                      ),
                      SizedBox(width: 20.w,),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Zafar Iqbal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.sp),),
                            SizedBox(height: 10.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.person),
                                Text("Pakprogrammer"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  height: 255.h,
                  width: Get.size.width,
                  padding: EdgeInsets.symmetric(vertical: 20.w,horizontal: 10.w),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text("Activities",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.sp),),
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ActivityContainer(title: "POTD Streak Score", icon: Icons.data_saver_on, color: Colors.amber, onpress: () {},),
                          ActivityContainer(title: "POTD Streak Score", icon: Icons.data_saver_on, color: Colors.amber, onpress: () {},),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ActivityContainer(title: "POTD Streak Score", icon: Icons.data_saver_on, color: Colors.amber, onpress: () {},),
                          ActivityContainer(title: "POTD Streak Score", icon: Icons.data_saver_on, color: Colors.amber, onpress: () {},),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                    height: 395.h,
                    width: Get.size.width,
                    padding: EdgeInsets.symmetric(vertical: 20.w,horizontal: 10.w),
                    color: Colors.white,
                    child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text("Content",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.sp),),
                    ),
                    SizedBox(height: 10.h,),
                    Entity(title: 'My Courses', Onpress: () {}, leadingIcon: Icons.account_box_outlined,icon: Icons.arrow_forward_ios,),
                    Entity(title: 'Downloaded Courses', Onpress: () {}, leadingIcon: Icons.play_arrow_outlined,icon: Icons.arrow_forward_ios,),
                    Entity(title: 'Downloaded Articles', Onpress: () {}, leadingIcon: Icons.download,icon: Icons.arrow_forward_ios,),
                    Entity(title: 'Bookmarked Articles', Onpress: () {}, leadingIcon: Icons.bookmark,icon: Icons.arrow_forward_ios,),
                  ],
                )),
                SizedBox(height: 10.h,),
                Container(
                    height: 480.h,
                    width: Get.size.width,
                    padding: EdgeInsets.symmetric(vertical: 20.w,horizontal: 10.w),
                    color: Colors.white,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text("Prefereces",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.sp),),
                        ),
                        SizedBox(height: 10.h,),
                        Entity(title: 'About us', Onpress: () {}, leadingIcon: Icons.account_box_outlined,),
                        Entity(title: 'Privacy Policy', Onpress: () {}, leadingIcon: Icons.privacy_tip),
                        Entity(title: 'Feedback', Onpress: () {}, leadingIcon: Icons.feedback,),
                        Entity(title: 'Settings', Onpress: () {}, leadingIcon: Icons.settings,icon: Icons.arrow_forward_ios,),
                        Entity(title: 'Logout', Onpress: () {}, leadingIcon: Icons.logout,),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }


}
