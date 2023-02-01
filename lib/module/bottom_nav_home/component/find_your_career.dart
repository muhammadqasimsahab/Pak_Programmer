
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/util/common_Text.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         Column(
           children: [
             item(PImages.java, "Java", () => null),
             SizedBox(height: 10,),
             item(PImages.csharp, "C", () => null),

           ],
         ),
          Column(
           children: [
             item(PImages.kotline, "Kotlin", () => null),
             SizedBox(height: 10,),
             item(PImages.cpp, "C++", () => null),

           ],
         ),
          Column(
           children: [
             item(PImages.php, "PHP", () => null),
             SizedBox(height: 10,),
             item(PImages.html, "HTML", () => null),

           ],
         ),
          Column(
           children: [
             item(PImages.python, "Python", () => null),
             SizedBox(height: 10,),
             item(PImages.css, "CSS", () => null),

           ],
         ),
          Column(
           children: [
             item(PImages.dart, "Dart", () => null),
             SizedBox(height: 10,),
             item(PImages.js, "Javascript", () => null),

           ],
         ),
        ],
      ),
    );

  }

  InkWell item(String? image, String? text, Function()? onp) {
    return InkWell(
      onTap: onp,
      child: Container(
        child: Column(
          children: [
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border:
                        Border.all(color: Colors.white, width: 0.5)),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        image ?? "",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: commonText(
                  title: text ?? "",
                  fontWeight: FontWeight.w700,
                  textSize: 11,
                  color: Color(0xff2D6C95),
                )),
          ],
        ),
      ),
    );
  }

}