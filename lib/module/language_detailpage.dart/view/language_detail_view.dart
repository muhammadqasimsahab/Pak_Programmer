// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/constant/tabbar_dot_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';

class LanguageDetailPage extends StatefulWidget {
  String name;
   LanguageDetailPage({super.key,required this.name});

  @override
  State<LanguageDetailPage> createState() => _LanguageDetailPageState();
}

class _LanguageDetailPageState extends State<LanguageDetailPage> {
final Uri whatapps=Uri.parse("https://whatsapp.com");

var phone="+923351956201";
void lunchWhatApp( number,message) async{
  String url="whatapp://send&phone=$number&text$message";
  await canLaunchUrl  (Uri.parse(url)) ? lunchWhatApp("03351956201",""):print("can't open whatapp");
}
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 4,
      child: Scaffold(
       
      backgroundColor: PColor.backgroundColor,

        floatingActionButton: FloatingActionButton(
          backgroundColor: PColor.secondryColor,
          onPressed: (){
      // lunchWhatApp("+923351956201", "hello");
         canLaunchUrl(whatapps);
          },child: Icon(Icons.whatsapp),),
        appBar: AppBar(
            title: commonText(
              title: widget.name,
              textSize: 13.sp,
              color: PColor.color_white,
            ),
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios)),
            backgroundColor: PColor.appColor,
            bottom: TabBar(
              // indicator: CirculerIndicator(color: PColor.color_white,radius: 0.8.h),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,
              labelColor: PColor.color_white,
              unselectedLabelColor: Colors.grey,
              tabs: const[
                Tab(
                  text: 'Basic',
                ),
                Tab(
                  text: 'Advance',
                ),
                Tab(
                  text: 'Interview Q',
                ),
                Tab(
                  text: 'Practice Code',
                ),
              ],
            )
          
            ),
        body: const TabBarView(
          
          children:  [
          Center(
            child: Text(" Basic"),
          ),
          Center(
            child: Text(" Advance"),
          ),
          Center(
            child: Text(" Interview"),
          ),
          Center(
            child: Text(" Practice Code"),
          ),
        ]),
      ),
    );
  }
  _launchWhatsapp() async {
    var whatsapp = "+923351956201";
    var whatsappAndroid =Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid)) {
        await launchUrl(whatsappAndroid);
    } else {
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
}

}
