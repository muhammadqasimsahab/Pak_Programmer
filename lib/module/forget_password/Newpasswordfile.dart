import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pak_programmer/module/auth/logo/logo_screen.dart';

import 'app_style.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 100),
                  child:
                  Image(image: AssetImage('assets/forgot_icon.png'), width: 100),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text('Create New Password',
                    style: KEncodeSansBold.copyWith(fontSize: 20)),
                const SizedBox(
                  height: 30,
                ),
                Text('Your New Password best be different \n from previous password',
                    style: KEncodeSansRagular.copyWith(color: KGrey)),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: false,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Klightgreen,
                            ),
                            fillColor: Color.fromARGB(225, 235, 235, 224),
                            filled: true,
                            hintText: 'Enter New Password',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            isCollapsed: false,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Klightgreen,
                            ),
                            fillColor: Color.fromARGB(225, 235, 235, 224),
                            filled: true,
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
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
                    child: InkWell(
                      onTap: (){
                        Get.to(LogInScreen(),transition: Transition.fadeIn);
                      },
                      child: Text('Create',
                          style: KEncodeSansRagular.copyWith(
                              color: Kwhite, fontSize: 15)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),


              ],
            ),
          ),
        ));
  }
}
