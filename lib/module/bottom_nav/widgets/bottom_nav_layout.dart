// import 'package:bab_ul_bazgha/constant.dart/color.dart';
// import 'package:bab_ul_bazgha/constant.dart/image.dart';
// import 'package:bab_ul_bazgha/constant.dart/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class GenralTabBarMaterialWidgets extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  GenralTabBarMaterialWidgets({required this.index, required this.onChangedTab});

  @override
  State<GenralTabBarMaterialWidgets> createState() => _GenralTabBarMaterialWidgetsState();
}

class _GenralTabBarMaterialWidgetsState extends State<GenralTabBarMaterialWidgets> {

  final placeHolder = Opacity(
    opacity: 0,
    child: IconButton(onPressed: () {}, icon: Icon(Icons.no_cell)),
  );

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          buildTabItem(index: 4, icon:PImages.fyp,title: "FYP"),
          buildTabItem(index: 1, icon:PImages.fullstack,title: 'FULL STACK'),
          buildTabItem(index: 2, icon:PImages.home,title: 'HOME'),
          buildTabItem(index: 3, icon:PImages.project,title: "PROJECT"),
          buildTabItem(index: 0, icon:PImages.language,title: "SETTING"),

      ],
    ));
  }

  Widget buildTabItem({
    required int index,
    required String icon,
    required String title,
    Color? color,
    // required Widget title,
  }) {
    final isSelect = index == widget.index;
    return IconTheme(
      data: IconThemeData(color: isSelect ? PColor.appColor : Colors.black),
      child: Padding(
        padding:  EdgeInsets.only(bottom: 8),
        child: GestureDetector(
          onTap: () => widget.onChangedTab(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             IconButton(
               icon: Image.asset(
                 icon,
                 color: isSelect ? PColor.bottomNavigationr : Colors.grey,
                 width: 6.w,
                 height: 6.h,
               ),
               onPressed:null ,
             ),
             Text(title,style: TextStyle(color: isSelect ? PColor.bottomNavigationr :Colors.grey,fontSize: 10),)
            ],
          ),
        ),
      ),
    );
  }
}
