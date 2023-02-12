import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';

class TopBannerDetailPage extends StatefulWidget {
  const TopBannerDetailPage({super.key});

  @override
  State<TopBannerDetailPage> createState() => _TopBannerDetailPageState();
}

class _TopBannerDetailPageState extends State<TopBannerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios)),
        // title: commonText(title: "Top Banner"),
        backgroundColor: PColor.secondryColor,
      )
    );
  }
}