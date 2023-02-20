import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:pak_programmer/util/common_Text.dart';
import 'package:sizer/sizer.dart';

class PracticeCodePage extends StatefulWidget {
  String? name;
  PracticeCodePage({this.name});


  @override
  State<PracticeCodePage> createState() => _PracticeCodePageState();
}

class _PracticeCodePageState extends State<PracticeCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
