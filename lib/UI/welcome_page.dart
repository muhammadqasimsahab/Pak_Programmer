import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/UI/auth/logo/logo_screen.dart';
import 'package:pak_programmer/images_class/images_class.dart';
import 'package:pak_programmer/util/app_style.dart';
import 'package:pak_programmer/util/color.dart';

import '../Widgets/reuseable_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogInScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(225, 1, 125, 196),
                            Color.fromARGB(225, 42, 168, 148),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(kBorderRadius)),
                    child: Center(
                      child: Text('Getting Started',
                          style: KEncodeSansRagular.copyWith(
                              color: Kwhite, fontSize: 15)),
                    ),
                  ),
                ),
              ),
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
          ),        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   // crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     // Image.asset(ImagesLinks.logo1),
        //   Image.asset(PImages.logo,height: 150,width: 150,),
        //     SizedBox(height: 10),
        //     // Padding(
        //     //     padding: const EdgeInsets.all(30),
        //     //     child: Image.asset(ImagesLinks.full)),
        //     SizedBox(height: 80),
        //     Text(
        //       'Welcome',
        //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
        //     ),
        //     SizedBox(height: 15),
        //     Text('Create An account and access thousand\nof cool stuffs',
        //         textAlign: TextAlign.center),
        //     SizedBox(
        //       height: Get.size.height * 0.11,
        //     ),
        //  MaterialButton(
        //    minWidth: Get.size.width-40,
        //    height: Get.size.height*0.07,
        //    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        //    child: Text('Getting Starting',style: TextStyle(color: Colors.white,fontSize: 18),),
        //    onPressed: (){Get.to(LogInScreen());},color: PColor.btnColor,),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text('Already have an account?'),
        //         SizedBox(
        //           width: Get.size.width * 0.03,
        //         ),
        //         SizedBox(
        //           height: Get.size.height * 0.05,
        //         ),
        //         Text('Log In',style: TextStyle(color:PColor.btnColor),)
        //       ],
        //     ),
        //   ],
        // ),
    
      ),
    );
  }
}
