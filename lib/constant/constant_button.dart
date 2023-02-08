// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'package:pak_programmer/util/color.dart';

class ConstantButton extends StatefulWidget {
  String name;
  Function() onpress;
  Color? backColor;
  Color? textColor;
  ConstantButton(
      {Key? key,
      required this.name,
      required this.onpress,
      this.backColor = PColor.secondryColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  State<ConstantButton> createState() => _ConstantButtonState();
}

class _ConstantButtonState extends State<ConstantButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: widget.onpress,
        child: Text(
          widget.name,
          style: TextStyle(color: widget.textColor),
        ),
        minWidth: Get.size.width - 20.w,
        color: widget.backColor,
        height: 6.h,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
