import 'package:flutter/material.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class FullStackScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          // centerTitle: true,
          elevation: 0.2,
          automaticallyImplyLeading: false,
          // leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios)),
          backgroundColor:PColor.secondryColor,
          title: Text(
            'Full Stack',
            style: TextStyle(color: Colors.white, fontSize: 13.sp),
          ),
        ),
    );
  }
}
