import 'package:flutter/material.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

class ReusableTextFiled extends StatelessWidget {
  ReusableTextFiled(
      {super.key,
      required this.hintText,
      this.suffixicon,
      this.autovalidate,
      this.validate,
      this.controller,
      this.visiable});
  var hintText;
  Widget? suffixicon;
  final validate;
  final controller;
  AutovalidateMode? autovalidate;
  bool? visiable;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      obscureText: visiable!,
      validator: validate,
      controller: controller,
      autovalidateMode: autovalidate,
      decoration: InputDecoration(
         enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: PColor.secondryColor),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:PColor.secondryColor),
                   ),  
                 suffixIcon: suffixicon,
          hintText: hintText,

          hintStyle: TextStyle(color: Colors.grey.shade400,fontSize: 10.sp)
          // enabledBorder:
          //     OutlineInputBorder(borderRadius: BorderRadius.circular(10))
          ),
    );
  }
}
