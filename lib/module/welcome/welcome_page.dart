import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/auth/logo/logo_screen.dart';
import 'package:pak_programmer/constant/constant_button.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/util/app_style.dart';
import 'package:pak_programmer/util/color.dart';
import 'package:sizer/sizer.dart';

import '../../Widgets/reuseable_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Image(image: AssetImage(PImages.logo), width: 150),
                ),
                const SizedBox(
                  height: 130,
                ),
                Text('Welcome', style: KEncodeSansBold.copyWith(fontSize: 20)),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text('Create an account and access thousand',
                        style: KEncodeSansRagular.copyWith(color: KGrey)),
                         Text('of cool stuffs',
                        style: KEncodeSansRagular.copyWith(color: KGrey)),
                  ],
                ),
                   SizedBox(
                  height: 1.h,
                ),
               ConstantButton(name: "Getting Started", onpress: (){
                Get.to(LogInScreen(),transition: Transition.fadeIn);
               }),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: KEncodeSansRagular.copyWith(color: KGrey)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInScreen()));
                      },
                      child: Text('  Log In',
                          style: KEncodeSansBold.copyWith(
                            color: Klightgreen,
                          )),
                    ),
                  ],
                ),
              ],
            ),
        ),        // child: Column(
      
      ),
    );
  }
}
