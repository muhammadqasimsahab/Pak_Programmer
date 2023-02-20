import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/module/bottom_nav_home/component/find_your_career.dart';
import 'package:pak_programmer/module/bottom_nav_home/component/home_courses_container.dart';
import 'package:pak_programmer/module/bottom_nav_home/component/home_top_banner.dart';
import 'package:pak_programmer/module/bottom_nav_home/component/language_container.dart';
import 'package:pak_programmer/module/bottom_nav_home/controller/home_getLanguage_controller.dart';
import 'package:pak_programmer/module/bottom_nav_home/controller/home_get_courseController.dart';
import 'package:pak_programmer/module/bottom_nav_home/controller/home_top_banner_controller.dart';
import 'package:pak_programmer/module/bottom_nav_home/servies/home_servies.dart';
import 'package:pak_programmer/module/bottom_nav_home/shimmer/banner_shimmer.dart';
import 'package:pak_programmer/module/bottom_nav_home/shimmer/course_shimmer.dart';
import 'package:pak_programmer/module/bottom_nav_home/shimmer/language_shimmer.dart';
import 'package:pak_programmer/module/view%20all/view_all.dart';
import 'package:pak_programmer/util/api.dart';
// import 'package:pak_programmer/pages/home_page/component/find_your_career.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class PakProgrammerHome extends StatefulWidget {
  const PakProgrammerHome({Key? key}) : super(key: key);

  @override
  State<PakProgrammerHome> createState() => _PakProgrammerHomeState();
}

class _PakProgrammerHomeState extends State<PakProgrammerHome> {
  final getCoursesController = Get.put(HomeGetCoursesController());
  final getLanguageController = Get.put(HomeGetLanguageController());
  final getbannerController = Get.put(HomeTopBannerController());

  BannerAd? bannerAd;
  bool isLoaded = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 5000), () {
      setState(() {
        isLoaded = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: PColor.backgroundColor,
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.7,
        backgroundColor: PColor.backgroundColor,
        title: Row(
          children: [
            Text(
              "Pak",
              style: TextStyle(
                  color: PColor.secondryColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 13.sp),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              "Programmers",
              style: TextStyle(
                  // fontFamily: "",
                  color: PColor.appColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 13.sp),
            )
          ],

        ),
        actions: [
           PopupMenuButton<int>(
            icon: Icon(Icons.more_vert,color: Colors.black,),
          onSelected: (item) => handleClick(item),
          itemBuilder: (context) => [
            PopupMenuItem<int>(value: 0, child: Text('Item 1')),
            PopupMenuItem<int>(value: 1, child: Text('Item 2')),
          ],
        ),
        ],
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Container(
                // height: 15.h,
                width: Get.size.width,
                // child:BannerShimmer()),
                child: HomeTopBanner(getbannerController: getbannerController)),
            search_box(context),
            /*
            Padding(
              padding:  EdgeInsets.all(3.w),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        isLoaded? Container(
                          height: 20.6.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                              color: PColor.color_white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Stack(
                                  children:[
                                    Container(
                                      height: 10.h,
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/fban.png"),
                                              fit: BoxFit.cover

                                          )
                                      ),
                                    ),
                                    Positioned(
                                      right: 0,
                                      child: Container(
                                          height: 3.h,
                                          width: 20.w,
                                          color: Colors.white,
                                          child: Center(child: Text("Online",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.sp,color: Colors.green)))),
                                    ),
                                  ]
                              ),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Course:" ,style: TextStyle(fontSize: 10.sp)),
                                            SizedBox(width: 1.w,),
                                            Text("Flutter" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.sp)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.access_time,size: 2.5.h),
                                            SizedBox(width: 2.w,),
                                            Text("3 months" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.sp)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("Price:",style: TextStyle(color: Colors.red,fontSize: 10.sp),),
                                            SizedBox(width: 4.w,),
                                            Text("20k",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold),),
                                            SizedBox(width: 4.w,),
                                            Text("25k",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.sp,color: Colors.red.withOpacity(0.4),decoration: TextDecoration.lineThrough),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              PImages.off30,
                                              height: 7.h,
                                              width: 7.w,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ) :getShimmerLoading(),
                        SizedBox(width: 2.w,),
                        Container(
                          height: 20.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                              color: PColor.color_white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ]
                  )
              ),
            ),
           */
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: 4.w,
                  // ),
                  Text(
                    'Lets Find Your Career',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                  ),
                     InkWell(
                      onTap: (){
                        Get.to(ViewAllLanguage(),transition: Transition.fadeIn);
                      },
                      child:Text( "View All",style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,fontSize: 10.sp),))
                      //  commonText(title: "View All",fontWeight: FontWeight.w600,color: PColor.color_black,textSize: 12.sp)),
                ],
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
           
            Container(
                //  height: 24.h,
                width: Get.size.width,
                // child:LanguageShimmer()),
                child: LanguageContainer(
                    getLanguageController: getLanguageController)),
            SizedBox(
              height: 2.h,
            ),
            isLoaded
                ? Container(
                    height: 6.h,
                    child: AdWidget(
                      ad: bannerAd!,
                    ),
                  )
                : SizedBox(),
            Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Become Fullstack Developer',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Container(
                //  height: 25.h,
                // child:CourseShimmer()),
                child: HomeCoursesContainer(
                    getCoursesController: getCoursesController)),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Connect with our dev team to make',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  "FYP'S",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: PColor.appColor),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 1.5.h),
              height: Get.size.height * 0.16,
              width: Get.size.width,
              child: Image.asset(PImages.people),
            ),
            Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'Download Our Projects',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  "Free",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: PColor.appColor),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                downloadOurProject_Container("Flutter Education App",
                    "learn and earn", PImages.freeicon, PImages.project1),
                downloadOurProject_Container("Flutter Fitness App",
                    "learn and earn", PImages.freeicon, PImages.project2),
              ],
            ),
            SizedBox(
              height: 12.h,
            )
          ],
        ),
      ),
      
    );
    
  }


  Container fullstackDeveloper_conteiner(
      String title, String seconTitle, String imag, String disIage) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 1),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      height: 25.h,
      width: Get.size.width / 2.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Image.asset(
                  imag,
                  width: 60.w,
                  height: 5.h,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  title,
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  seconTitle,
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 1.h),
                  child: Row(
                    children: [
                      Icon(
                        (Icons.access_time),
                        size: 15.sp,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        '3 Months',
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 1.2.h),
                  child: Image.asset(
                    disIage,
                    height: 6.h,
                    width: 6.w,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  void handleClick(int item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
  }
}

  Container downloadOurProject_Container(
      String title, String seconTitle, String freeIcon, String project) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300, width: 0.2.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      height: 25.h,
      width: Get.size.width / 2.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    width: Get.size.width,
                    height: 13.h,
                    child: Image.asset(
                      project,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  title,
                  style:
                      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 1.h,
                ),
                // Text(seconTitle,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 2.h),
                  child: Row(
                    children: [
                      Icon(
                        (Icons.phone_android),
                        size: 13.sp,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        '10 Screen',
                        style: TextStyle(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 2.h),
                  child: Image.asset(
                    freeIcon,
                    height: 4.h,
                    width: 7.w,
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Container search_box(BuildContext context) {
    return Container(
      height: 6.h,
      margin: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
      decoration: BoxDecoration(
        border: Border.all(color: PColor.appColor.withOpacity(0.3), width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        
        // enableSuggestions: ,
        style: TextStyle(fontSize: 10.sp),
        cursorColor: Color(0xff019687),
        decoration: InputDecoration(
          
            // contentPadding: EdgeInsets.only(top: 12.sp),
            hintStyle: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w100),
            prefixIcon: Icon(
              Icons.search,
              size: 18.sp,
              color: Colors.black,
            ),
            contentPadding: EdgeInsets.only(top: 1.5.h),
            hintText: "Search Messages",
            border: InputBorder.none
            // border: OutlineInputBorder(

            //   borderRadius: BorderRadius.circular(25.r)
            // )
            ),
      ),
    );
  }

  // ads unit
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: "ca-app-pub-3940256099942544/6300978111",
        listener: BannerAdListener(onAdLoaded: (ad) {
          setState(() {
            isLoaded = true;
          });
          print("Banner Ad Loaded");
        }, onAdFailedToLoad: (ad, error) {
          ad.dispose();
        }),
        request: AdRequest());

    bannerAd!.load();
  }

  Shimmer getShimmerLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 20.7.h,
        width: 70.w,
        decoration: BoxDecoration(
          //color: PColor.color_white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 10.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(height: 2.h,width: 15.w,color: Colors.white),
                          SizedBox(width: 1.w,),
                          Container(height: 2.h,width: 15.w,color: Colors.white),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 3.h,width: 6.w,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                          SizedBox(width: 2.w,),
                          Container(height: 2.h,width: 18.w,color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 0.2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(height: 2.h,width: 14.w,color: Colors.white),
                          SizedBox(width: 4.w,),
                          Container(height: 2.h,width: 6.w,color: Colors.white),
                          SizedBox(width: 4.w,),
                          Container(height: 2.h,width: 6.w,color: Colors.white),
                        ],
                      ),
                      Container(
                        height: 5.h,
                        width: 5.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
