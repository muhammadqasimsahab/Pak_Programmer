import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive?3.w:1.w,
      height: 1.h,
      decoration: BoxDecoration(

        color:isActive?PColor.secondryColor: Colors.grey,
        borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}
