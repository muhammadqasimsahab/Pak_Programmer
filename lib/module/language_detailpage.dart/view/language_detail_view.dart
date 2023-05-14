// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/bottom_nav_home/pak_programmer_home.dart';
import 'package:pak_programmer/module/language_detailpage.dart/controller/get_language_category.dart';
import 'package:pak_programmer/module/language_detailpage.dart/controller/get_language_headingController.dart';
import 'package:pak_programmer/module/language_detailpage.dart/view/BasicDetail.dart';
import 'package:pak_programmer/module/language_detailpage.dart/view/interview_question_tab.dart';
import 'package:pak_programmer/module/language_detailpage.dart/view/practice_code_tab.dart';
import 'package:pak_programmer/routes/pgaes.dart';
// import 'package:pak_programmer/module/language_detailpage.dart/controller/lang_detail_body_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';

int? lang_title;
var get_tabbar_id;
var get_tabbar_lang_id;
var home_lang_id;

class LanguageDetailPage extends StatefulWidget {
  String? name;
  int? id;
  LanguageDetailPage({super.key, this.name, this.id});

  @override
  State<LanguageDetailPage> createState() => _LanguageDetailPageState();
}

class _LanguageDetailPageState extends State<LanguageDetailPage>
    with SingleTickerProviderStateMixin {
  final Uri whatapps = Uri.parse("https://whatsapp.com");

  var phone = "+923351956201";
  void lunchWhatApp(number, message) async {
    String url = "whatapp://send&phone=$number&text$message";
    await canLaunchUrl(Uri.parse(url))
        ? lunchWhatApp("03351956201", "")
        : print("can't open whatapp");
  }

  // TabController? tabController;

  final languageDetailController = Get.put(GetLanugaeDetailController());

  // var _controller;
  // var _selectedIndex = "";

  // var _select_lang_id = "";
  int selectedItem = 0;
 bool apiItemSelected=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   setState(() {
     selectedItem = 0;
      setState(() {
        home_lang_id=widget.id;
      });
   });


    // Create TabController for getting the index of current tab
  }
  bool isSelect=true;

  @override
  Widget build(BuildContext context) {
    print("hhhhhhhh  : $home_lang_id");
    return Scaffold(
        backgroundColor: PColor.backgroundColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: PColor.secondryColor,
          onPressed: () {
            // lunchWhatApp("+923351956201", "hello");
            canLaunchUrl(whatapps);
          },
          child: Icon(Icons.call),
        ),
        appBar: AppBar(
          elevation: 0,
          title: commonText(
            title: widget.name.toString(),
            textSize: 13.sp,
            color: PColor.color_white,
          ),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          backgroundColor: PColor.appColor,
        ),
        body:  Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: PColor.appColor,
                  height:6.h,
                  child: Obx(() {
                   if(languageDetailController.isLoading.value){
                     return Center();
                   }else{
                     return ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: languageDetailController.productlist.length,
                       itemBuilder: (context, index) {

                         return InkWell(
                           onTap: (){

                             setState(() {
                              apiItemSelected=false;
                            selectedItem=index;
                            
                               get_tabbar_id=languageDetailController.productlist[index].languageId.toString();
                               get_tabbar_lang_id=languageDetailController.productlist[index].id.toString();
                                 });

                             if(languageDetailController.productlist[index].id==3){
                               Get.to(PracticeCodePage(
                                 name: languageDetailController.productlist[index].title,
                               ),transition: Transition.fadeIn);
                             }else if(languageDetailController.productlist[index].id==4){
                               Get.to(InterViewQuestionTab(
                                 name: languageDetailController.productlist[index].title,
                               ),transition: Transition.fadeIn);
                             }

                           },
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 15),
                             child: Container(
                                 child:
                                 Container(
                                   decoration: BoxDecoration(
                                       border: Border(
                                         bottom: BorderSide(
                                           width: 3,
                                           color: selectedItem ==
                                               index
                                               ?PColor.color_white
                                               : Colors
                                               .transparent,
                                         ),
                                       )),
                                   child: Text(
                                     languageDetailController.productlist[index].title.toString(),
                                     style: TextStyle( color:selectedItem ==
                                         index?Colors.white: Colors.grey),
                                   ),
                                 )
                             ),
                           ),
                         );
                       },
                     );

                   }
                  }),
                ),
                Container(

                    child: TabBarBody()),
              ],
            ),
          ),
        )
    );
  }




}

class TabBarBody extends StatefulWidget {
  const TabBarBody({super.key});

  @override
  State<TabBarBody> createState() => _TabBarBodyState();
}

class _TabBarBodyState extends State<TabBarBody> {
    final languagebodyHeadingController =
      Get.put(GetLanugaeHeadingController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (languagebodyHeadingController.isLoading.value) {
          return Center(
            child: Center(child: CircularProgressIndicator()),
          );
        } else {
          return Container(
            height: Get.size.height,
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: languagebodyHeadingController.productlist.length,
              itemBuilder: (context, pos) {
                return
                 Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      commonText(
                        // title: courseController.productlist[pos].title,
                        title: languagebodyHeadingController.productlist[pos].heading.toString(),
                        fontWeight: FontWeight.w700,
                        textSize: 13.sp,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Container(
                        height:30.h ,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: languagebodyHeadingController
                              .productlist[pos].subHeading?.length,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.start,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.only(top: 1.5.h),
                                  child: CircleAvatar(
                                    backgroundColor:
                                    Color(0xff67C8F4),
                                    minRadius: 0.7.h,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                               InkWell(
                                 onTap: (){
                                   Get.to(LangDetail(
                                     name: languagebodyHeadingController
                                         .productlist[pos].subHeading![index].subHeading,
                                     id:languagebodyHeadingController
                                         .productlist[pos].subHeading![index].id ,
                                   ));
                                 },
                                 child:
                                 Flexible(
                                     child: Padding(
                                       padding:  EdgeInsets.symmetric(vertical: 1.h),
                                       child: Text(
                                         languagebodyHeadingController.productlist[pos]
                                             .subHeading![index].subHeading.toString(),
                                         maxLines: 7,
                                         overflow: TextOverflow.ellipsis,
                                         textAlign: TextAlign.end,
                                         style: TextStyle(
                                             fontFamily: "JameelNooriNastaleeqKasheeda",
                                             fontSize: 14.sp),
                                       ),
                                     )),

                               ),
                              ],
                            );

                              },
                        ),
                      )
                      // Text(courseController.productlist[index].heading),
                    ],
                  ),
                ));

              },

            ),
          );
        }
      },
    );
  }
}
